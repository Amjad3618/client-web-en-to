import 'package:client_web_1/Web_size_screens/forgor_pasd_screen_web.dart';
import 'package:client_web_1/Web_size_screens/home_screen_web.dart';
import 'package:client_web_1/Web_size_screens/singup_screen_web.dart';
import 'package:client_web_1/Widgets/custome_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoginScreenWeb extends StatefulWidget {
  const LoginScreenWeb({super.key});

  @override
  State<LoginScreenWeb> createState() => _LoginScreenWebState();
}

class _LoginScreenWebState extends State<LoginScreenWeb> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void _unfocusFields() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _unfocusFields,
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 400,
              padding: const EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: AutofillGroup(
                  child: FocusScope(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Lottie.asset(
                          'assets/Animation - 1735297018291.json', // Path to your Lottie file
                          height: MediaQuery.of(context).size.height * 0.2,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Welcome Back',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 32),

                        // Email Field
                        _buildInputField(
                          controller: _emailController,
                          focusNode: _emailFocusNode,
                          icon: Icons.email_outlined,
                          hintText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return 'Please enter your email';
                          //   }
                          //   if (!value.contains('@')) {
                          //     return 'Please enter a valid email';
                          //   }
                          //   return null;
                          // },
                        ),
                        const SizedBox(height: 16),

                        // Password Field
                        _buildInputField(
                          controller: _passwordController,
                          focusNode: _passwordFocusNode,
                          icon: Icons.lock_outline,
                          hintText: 'Password',
                          obscureText: !_isPasswordVisible,
                          suffixIcon: IconButton(
                            icon: Icon(_isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return 'Please enter your password';
                          //   }
                          //   if (value.length < 6) {
                          //     return 'Password must be at least 6 characters';
                          //   }
                          //   return null;
                          // },
                        ),
                       
                        const SizedBox(height: 24),

                        // Login Button
                        ElevatedButton(
                          onPressed: () {
                            _unfocusFields();
                            if (_formKey.currentState!.validate()) {
                              Get.to(HomeScreenWeb());
                              // Handle successful login logic here
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Forgot Password
                        TextButton(
                          onPressed: () { Get.to(ForgotPasswordScreenWeb());
                            // Handle forgot password action
                          },
                          child: const Text('Forgot Password?'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomTextWidget(text: "Dont have an accout?"),
                            TextButton(
                                onPressed: () {
                                  Get.to(SingUpScreenWeb());
                                },
                                child: Text("SingUp"))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required FocusNode focusNode,
    required IconData icon,
    required String hintText,
    bool obscureText = false,
    Widget? suffixIcon,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          icon: Icon(icon),
          hintText: hintText,
          border: InputBorder.none,
          suffixIcon: suffixIcon,
        ),
        validator: validator,
      ),
    );
  }
}
