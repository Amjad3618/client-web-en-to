import 'package:client_web_1/Utils/colors.dart';
import 'package:client_web_1/Web_size_screens/login_screen_web.dart';
import 'package:client_web_1/Web_size_screens/singup_screen_web.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../Widgets/custom_text_btn.dart';
import '../Widgets/custome_elevated_btn.dart';
import '../Widgets/custome_intro_cont.dart';
import '../Widgets/custome_text.dart';
import '../Widgets/user_container.dart';

class IntroScreenWeb extends StatelessWidget {
  const IntroScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                "assets/logoExample.png",
                height: 50,
                width: 50,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "En to Maldive",
                style: TextStyle(
                    color: blacktextcolor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        actions: [
          SizedBox(
            width: 30,
          ),
          CustomTextButton(
              onPressed: () {
                Get.to(LoginScreenWeb());
              },
              label: "LOGIN"),
          SizedBox(
            width: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Set the background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16), // Rounded corners
              ),
            ),
            child: InkWell(
              onTap: () {
                Get.to(SingUpScreenWeb());
              },
              child: Text(
                "Register",
                style: TextStyle(
                    color: whittextcolor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    color: blacktextcolor,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    " 💫 Exceptional Accuracy",
                                    style: TextStyle(
                                        color: whittextcolor, fontSize: 13),
                                  ),
                                ))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "🔥 Speaker Identification",
                                    style: TextStyle(
                                        color: blacktextcolor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "AI-Powered Audio & \n Text Transcription",
                                style: TextStyle(
                                    color: blacktextcolor,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Effortlessly transform your meetings, interviews, and discussions into searchable text with SoundType AI. Simplify transcription, editing, summarization, and collaboration in one seamless workflow, designed to boost your productivity.",
                                textAlign: TextAlign
                                    .center, // Correct property for alignment
                                style: TextStyle(
                                  color: blacktextcolor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomElevatedButton(
                                    onPressed: () {
                                      // Your action here
                                      Get.to(SingUpScreenWeb());
                                    },
                                    label: "Register",
                                    backgroundColor: Colors.blue,
                                    textColor: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    borderRadius: 16.0,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  CustomTextButton(
                                    onPressed: () {
                                      // Your action here
                                    },
                                    label: "Get Started",
                                    borderColor: Colors.blue,
                                    textColor: Colors.black,
                                    borderRadius: 8.0,
                                    borderWidth: 1.0,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 3,
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/3dweb.webp",
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.6,
                                        fit: BoxFit.contain,
                                      ),
                                      Lottie.asset(
                                        'assets/Animation - 1735297018291.json',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.3,
                                        fit: BoxFit.contain,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIntroContainer(
                  title: "High Accuracy",
                  description:
                      "Experience precision and reliability with our cutting-edge technology, offering unparalleled accuracy in converting English speech to Dhehivi text, ensuring seamless data processing and analysis.",
                  backgroundColor: const Color.fromARGB(255, 121, 183, 212),
                  textColor: Colors.white,
                  color: Colors.blue.shade300,
                ),
                CustomIntroContainer(
                  title: "AI Summary",
                  description:
                      "Quickly understand key points and essential information with our AI Summary tool, which condenses large volumes of text into concise, digestible summaries.",
                  backgroundColor: const Color.fromARGB(255, 121, 183, 212),
                  textColor: Colors.white,
                  color: Colors.blue,
                ),
                CustomIntroContainer(
                  title: "Chat with your audio",
                  description:
                      "Engage directly with your audio content through our interactive chat feature, allowing you to converse and get real-time responses from your recorded audio files.",
                  backgroundColor: const Color.fromARGB(255, 121, 183, 212),
                  textColor: Colors.white,
                  color: blacktextcolor,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextWidget(
              text: "How does it works?", // Text to display
              textColor: Colors.black, // Text color
              fontSize: 25.0, // Font size
              fontWeight: FontWeight.bold, // Font weight
              textAlign: TextAlign.center, // Text alignment
              maxLines: 2, // Optional: Maximum number of lines
              overflow:
                  TextOverflow.ellipsis, // Optional: Text overflow behavior
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Image.asset(
                          "assets/how1.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: blacktextcolor,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: whittextcolor, fontSize: 30),
                                ),
                              ),
                            ),
                            CustomTextWidget(text: "AI Transcription"),
                            SizedBox(
                              height: 10,
                            ),
                            CustomTextWidget(
                              text:
                                  "Once your file is uploaded, our advanced AI-driven transcription technology takes over. It is specifically designed to convert spoken language into highly accurate text, accommodating various accents and dialects. The system recognizes technical terminology and distinguishes between speakers in multi-person recordings, making it perfect for applications ranging from lectures to interviews.",
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomTextButton(
                                onPressed: () {}, label: "GET STARTED")
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: blacktextcolor,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      color: whittextcolor, fontSize: 30),
                                ),
                              ),
                            ),
                            CustomTextWidget(text: "AI Transcription"),
                            SizedBox(
                              height: 10,
                            ),
                            CustomTextWidget(
                              text:
                                  "Once your file is uploaded, our advanced AI-driven transcription technology \n takes over. This technology is designed to convert spoken language into highly accurate  \n text. It adjusts for different accents and dialects, recognizes technical terminology,  \n and can differentiate between speakers in multi-person recordings, \n making it ideal for everything from lectures to interviews.",
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomTextButton(
                                onPressed: () {}, label: "GET STARTED"),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Image.asset(
                          "assets/how2.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.white, Colors.blue]),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/ARROW.png",
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        text:
                            "AI-Powered Speech Recognition & \n Transcription",
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        textColor: whittextcolor,
                      ),
                      CustomTextWidget(
                        text:
                            "Upload your file, and our advanced AI-powered transcription system will handle the rest. It accurately converts spoken language into text, adapting to diverse accents and dialects. With the ability to recognize technical terms and identify different speakers in group recordings, it’s the perfect solution for lectures, interviews, and more.",
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: UserFormContainer(
                      height: 300.0, // Set the height as you want
                      width: 400.0, // Set the width as you want
                      backgroundColor: Colors
                          .blue.shade100, // Optional: Custom background color
                      borderRadius: 20.0, // Optional: Custom border radius
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextWidget(text: "Sarah Thompson"),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                height: 35,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: blacktextcolor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: CustomTextWidget(
                                    text:
                                        "Marketing Manager, Bright Ideas Media",
                                    textColor: whittextcolor,
                                  ),
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Expanded(
                              child: CustomTextWidget(
                                  text:
                                      "Our platform specializes in delivering advanced speech-to-text services through powerful APIs. With unmatched accuracy and efficiency, we provide seamless solutions for converting speech into text, supported by reliable technology and exceptional customer support."),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  UserFormContainer(
                      backgroundColor: Colors.grey,
                      height: 300,
                      width: 400,
                      child: Column(
                        children: [
                          CustomTextWidget(text: "David Lee"),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                              height: 35,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: blacktextcolor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: CustomTextWidget(
                                  text: "CEO, Innovate Tech Solutions",
                                  textColor: whittextcolor,
                                ),
                              )),
                          SizedBox(height: 10),
                          CustomTextWidget(
                            text:
                                "SoundType AI has revolutionized our business operations. The transcription quality is exceptional, and the platform is incredibly user-friendly. It has saved us countless hours of manual transcription, enabling us to concentrate on our core activities. Highly recommended!",
                            textColor:
                                blacktextcolor, // Assuming you want the text in black
                            fontSize: 14.0, // Adjust font size as needed
                            textAlign:
                                TextAlign.center, // Aligning text to center
                          ),
                        ],
                      )),
                  UserFormContainer(
                    height: 300.0, // Set the height as you want
                    width: 400.0, // Set the width as you want
                    backgroundColor: Colors
                        .blue.shade100, // Optional: Custom background color
                    borderRadius: 20.0, // Optional: Custom border radius
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextWidget(text: "Robert Anderson"),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                              height: 35,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: blacktextcolor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: CustomTextWidget(
                                  text: "Legal Assistant, Law & Co.",
                                  textColor: whittextcolor,
                                ),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            child: CustomTextWidget(
                                text:
                                    "Our website is dedicated to providing advanced speech-to-text solutions, specializing in converting English and Maldivian speech into Dhivehi text with exceptional accuracy. Designed to cater to a wide range of needs, our platform ensures seamless transcription services tailored for the Maldivian language. With user-friendly features and support for multiple export formats, including PDF and DOCX, we make it effortless to share, store, and utilize your transcriptions efficiently."),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
