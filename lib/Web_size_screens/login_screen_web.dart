import 'package:client_web_1/Widgets/custome_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreenWeb extends StatelessWidget {
  const LoginScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/Animation - 1735297018291.json', // Path to your Lottie file
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20,),
            CustomTextWidget(
              text: "Sign In",
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
