import 'package:client_web_1/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Widgets/custom_text_btn.dart';
import '../Widgets/custome_elevated_btn.dart';
import '../Widgets/custome_intro_cont.dart';
import '../Widgets/custome_text.dart';

class LoginWeb extends StatelessWidget {
  const LoginWeb({super.key});

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
          CustomTextButton(onPressed: () {}, label: "LOGIN"),
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
            child: Text(
              "Register",
              style: TextStyle(
                  color: whittextcolor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
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
                width: MediaQuery.of(context).size.width * 0.9,
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
                                "AI-Powered Audio & \n Video Transcription",
                                style: TextStyle(
                                    color: blacktextcolor,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Transform your meetings, interviews, and discussions into searchable \n text effortlessly with SoundType AI. Streamline transcription, editing, \n summarization, and collaboration in one integrated workflow to boost \n productivity.",
                                textAlign: TextAlign
                                    .start, // Correct property for alignment
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
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/3dweb.webp",
                                  height:
                                      MediaQuery.of(context).size.height * 0.6,
                                ),
                                Lottie.asset(
                                  'assets/Animation - 1735297018291.json', // Path to your Lottie file
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  fit: BoxFit.contain,
                                ),
                              ],
                            )
                          ],
                        )
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
                      "Ensure precise and reliable results with our advanced technology that delivers high accuracy in data processing and analysis.",
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
                                  "Once your file is uploaded, our advanced AI-driven transcription technology \n takes over. This technology is designed to convert spoken language into highly accurate  \n text. It adjusts for different accents and dialects, recognizes technical terminology,  \n and can differentiate between speakers in multi-person recordings, \n making it ideal for everything from lectures to interviews.",
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10,),
                            CustomTextButton(onPressed: (){}, label: "GET STARTED")
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
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
                            SizedBox(height: 10,),
                            CustomTextButton(onPressed: (){}, label: "GET STARTED"),
                            
                          ],
                        ),
                      )
                      ,
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
            )
          ],
        ),
      ),
    );
  }
}
