import 'package:client_web_1/Mobile_size_screens/singup_mobile_screen.dart';
import 'package:client_web_1/Utils/colors.dart';
import 'package:client_web_1/Web_size_screens/singup_screen_web.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../Widgets/custom_text_btn.dart';
import '../Widgets/custome_elevated_btn.dart';

import '../Widgets/custome_text.dart';
import 'login_mobile_screen.dart';


class IntroMobileScreen extends StatelessWidget {
  const IntroMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              "assets/logoExample.png",
              height: 40,
              width: 40,
            ),
            const SizedBox(width: 8),
            Text(
              "En to Maldive",
              style: TextStyle(
                color: blacktextcolor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        actions: [
         CustomTextButton( onPressed: () => Get.to(LogInMobileScreen()), label: "LOGIN"),
         SizedBox(width: 15,),
          ElevatedButton(
            onPressed: () => Get.to(LogInMobileScreen()),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
            child: InkWell(
              onTap: (){
                Get.to(SingUpMobileScreen());
              },
              child: Text(
                "Register",
                style: TextStyle(color: whittextcolor, fontSize: 14),
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Hero Section
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Feature Tags
                    Wrap(
                      spacing: 8,
                      children: [
                        _buildFeatureTag("💫 Exceptional Accuracy", blacktextcolor),
                        _buildFeatureTag("🔥 Speaker ID", Colors.blueAccent),
                      ],
                    ),
                    const SizedBox(height: 16),
                    
                    // Main Heading
                    Text(
                      "AI-Powered Audio & Video Transcription",
                      style: TextStyle(
                        color: blacktextcolor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    
                    // Description
                    Text(
                      "Transform your meetings, interviews, and discussions into searchable text effortlessly with SoundType AI.",
                      style: TextStyle(
                        color: blacktextcolor,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 16),
                    
                    // Action Buttons
                    Row(
                      children: [
                        Expanded(
                          child: CustomElevatedButton(
                            onPressed: () => Get.to(SingUpScreenWeb()),
                            label: "Register",
                            backgroundColor: Colors.blue,
                            textColor: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            borderRadius: 16.0,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: CustomTextButton(
                            onPressed: () {
                              Get.to(SingUpMobileScreen());
                            },
                            label: "Get Started",
                            borderColor: Colors.blue,
                            textColor: Colors.black,
                            borderRadius: 8.0,
                            borderWidth: 1.0,
                          ),
                        ),
                      ],
                    ),
                    
                    // Hero Image
                    Center(
                      child: Image.asset(
                        "assets/3dweb.webp",
                        height: 200,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Features Section
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _buildFeatureCard(
                    "High Accuracy",
                    "Ensure precise and reliable results with our advanced technology.",
                    Colors.blue.shade300,
                  ),
                  const SizedBox(height: 16),
                  _buildFeatureCard(
                    "AI Summary",
                    "Quickly understand key points with our AI Summary tool.",
                    Colors.blue,
                  ),
                  const SizedBox(height: 16),
                  _buildFeatureCard(
                    "Chat with your audio",
                    "Engage directly with your audio content through our interactive chat feature.",
                    blacktextcolor,
                  ),
                ],
              ),
              
              const SizedBox(height: 24),
              
              // How It Works Section
              const CustomTextWidget(
                text: "How does it work?",
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              
              _buildHowItWorksStep(
                context,
                "1",
                "AI Transcription",
                "assets/how1.jpg",
                "Our advanced AI-driven transcription technology converts spoken language into highly accurate text.",
              ),
              
              const SizedBox(height: 16),
              
              _buildHowItWorksStep(
                context,
                "2",
                "Edit & Review",
                "assets/how2.jpg",
                "Review and edit your transcriptions with our user-friendly interface.",
                imageFirst: false,
              ),
              
              const SizedBox(height: 24),
              
              // Testimonials Section
              _buildTestimonialCard(
                "Sarah Thompson",
                "Marketing Manager",
                "SoundType AI has revolutionized the way we handle our transcription needs.",
                Colors.blue.shade100,
              ),
              const SizedBox(height: 16),
              _buildTestimonialCard(
                "David Lee",
                "CEO",
                "The transcription quality is outstanding, and the platform is user-friendly.",
                Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureTag(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color == blacktextcolor ? whittextcolor : blacktextcolor,
          fontSize: 12,
        ),
      ),
    );
  }

  Widget _buildFeatureCard(String title, String description, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildHowItWorksStep(
    BuildContext context,
    String number,
    String title,
    String imagePath,
    String description, {
    bool imageFirst = true,
  }) {
    final content = [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: blacktextcolor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  number,
                  style: TextStyle(color: whittextcolor, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(description),
          ],
        ),
      ),
      const SizedBox(width: 16),
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          imagePath,
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: imageFirst ? content : content.reversed.toList(),
      ),
    );
  }

  Widget _buildTestimonialCard(
    String name,
    String title,
    String testimonial,
    Color backgroundColor,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: blacktextcolor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              title,
              style: TextStyle(color: whittextcolor, fontSize: 14),
            ),
          ),
          Text(testimonial),
        ],
      ),
    );
  }
}