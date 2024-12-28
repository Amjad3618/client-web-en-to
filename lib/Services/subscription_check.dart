import 'package:client_web_1/Mobile_size_screens/premium_home_mobile.dart';
import 'package:client_web_1/Services/auth_services.dart';
import 'package:get/get.dart';

void accessPremiumFeature() {
  final AuthController _authController = Get.put(AuthController());

  if (_authController.currentUser.value != null) {
    if (_authController.currentUser.value!.isPremium) {
      // Allow access to premium features
      Get.to(() => PremiumHomeScreen());
    } else {
      // Check trial validity
      _authController.checkTrialValidity();
    }
  } else {
    // Handle case where user is not logged in
    print("User is not logged in.");
  }
}
