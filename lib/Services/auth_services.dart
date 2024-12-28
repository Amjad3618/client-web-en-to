import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../Models/user_model.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  var currentUser = Rx<UserModel?>(null);

  Future<void> signup(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Set trial start date
      UserModel newUser = UserModel(
        uid: userCredential.user!.uid,
        email: email,
        password: password,
        trialStartDate: DateTime.now(),
      );

      await _firestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .set(newUser.toMap());

      currentUser.value = newUser;
      Get.snackbar('Success', 'Signup successful!');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  Future<void> login(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Fetch user data from Firestore
      DocumentSnapshot userDoc = await _firestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .get();

      currentUser.value = UserModel.fromMap(userDoc.data() as Map<String, dynamic>);
      checkTrialValidity();
      Get.snackbar('Success', 'Login successful!');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void checkTrialValidity() {
    if (currentUser.value != null) {
      DateTime trialEndDate =
          currentUser.value!.trialStartDate.add(Duration(days: 7));
      if (DateTime.now().isAfter(trialEndDate)) {
        if (!currentUser.value!.isPremium) {
          Get.snackbar(
            'Trial Expired',
            'Your free trial has ended. Please subscribe to continue using premium features.',
          );
        }
      }
    }
  }

  Future<void> upgradeToPremium() async {
    if (currentUser.value != null) {
      currentUser.value!.isPremium = true;
      await _firestore
          .collection('users')
          .doc(currentUser.value!.uid)
          .update({'isPremium': true});
      Get.snackbar('Success', 'You are now a premium user!');
    }
  }
  
}
