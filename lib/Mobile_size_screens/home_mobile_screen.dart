import 'package:client_web_1/Mobile_size_screens/premium_screen_mobile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HomeMobileScreen extends StatefulWidget {
  const HomeMobileScreen({super.key});

  @override
  State<HomeMobileScreen> createState() => _HomeMobileScreenState();
}

class _HomeMobileScreenState extends State<HomeMobileScreen> {
  bool isSwapped = false;
  bool isRecording = false;
  final TextEditingController _sourceController = TextEditingController();
  final TextEditingController _targetController = TextEditingController();

  @override
  void dispose() {
    _sourceController.dispose();
    _targetController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English to Dhevi'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SizedBox(
              height: 160,
              width: 160,
              child: InkWell(
                onTap: () => Get.to(() => const PremiumScreenMobile()),
                child: Lottie.asset("assets/premiumanimation.json"),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[50],
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              // Translation Header with Language Switcher
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        isSwapped ? 'Maldive' : 'English',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 16),
                      IconButton(
                        icon: const Icon(Icons.swap_horiz),
                        onPressed: () {
                          setState(() {
                            isSwapped = !isSwapped;
                            // Swap text controllers' content here if needed
                            final temp = _sourceController.text;
                            _sourceController.text = _targetController.text;
                            _targetController.text = temp;
                          });
                        },
                      ),
                      const SizedBox(width: 16),
                      Text(
                        isSwapped ? 'English' : 'Maldive',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Translation Area
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Source Language Input
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey.shade200),
                          ),
                          child: Stack(
                            children: [
                              TextField(
                                controller: _sourceController,
                                maxLines: null,
                                decoration: InputDecoration(
                                  hintText: 'Enter text to translate',
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: TextStyle(color: Colors.grey[400]),
                                ),
                              ),
                              Positioned(
                                right: 8,
                                bottom: 8,
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        isRecording ? Icons.stop : Icons.mic,
                                        color: isRecording
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          isRecording = !isRecording;
                                        });
                                      },
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.clear),
                                      onPressed: () {
                                        _sourceController.clear();
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          isSwapped ? 'Dhivehi' : 'English',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),

                  // Arrow Icon
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.blue[400],
                      size: 24,
                    ),
                  ),

                  // Target Language Output
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.grey[50],
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey.shade200),
                          ),
                          child: Stack(
                            children: [
                              TextField(
                                controller: _targetController,
                                maxLines: null,
                                readOnly: true,
                                decoration: InputDecoration(
                                  hintText: 'Translation will appear here',
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: TextStyle(color: Colors.grey[400]),
                                ),
                              ),
                              Positioned(
                                right: 8,
                                bottom: 8,
                                child: IconButton(
                                  icon: const Icon(Icons.copy),
                                  onPressed: () {
                                    // Copy translation logic here
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          isSwapped ? 'English' : 'Dhivehi',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
