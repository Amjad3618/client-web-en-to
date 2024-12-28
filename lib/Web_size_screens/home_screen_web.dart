import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'premium_screen_web.dart';

class HomeScreenWeb extends StatefulWidget {
  const HomeScreenWeb({super.key});

  @override
  State<HomeScreenWeb> createState() => _HomeScreenWebState();
}

class _HomeScreenWebState extends State<HomeScreenWeb> {
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

  void _handleLanguageSwap() {
    setState(() {
      isSwapped = !isSwapped;
      final temp = _sourceController.text;
      _sourceController.text = _targetController.text;
      _targetController.text = temp;
    });
  }

  Widget _buildLanguageCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade50, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLanguageText(isSwapped ? 'Dhivehi' : 'English'),
            const SizedBox(width: 24),
            _buildSwapButton(),
            const SizedBox(width: 24),
            _buildLanguageText(isSwapped ? 'English' : 'Dhivehi'),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
      ),
    );
  }

  Widget _buildSwapButton() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        icon: const Icon(Icons.swap_horiz, color: Colors.blue),
        onPressed: _handleLanguageSwap,
        tooltip: 'Swap Languages',
      ),
    );
  }

  Widget _buildTranslationField({
    required bool isSource,
    required TextEditingController controller,
    required String hintText,
    required String language,
  }) {
    return Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            color: isSource ? Colors.white : Colors.grey.shade50,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.shade200),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Stack(
            children: [
              TextField(
                controller: controller,
                maxLines: null,
                readOnly: !isSource,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(20),
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                ),
              ),
              if (isSource) _buildSourceActions(),
              if (!isSource) _buildTargetActions(),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Text(
          language,
          style: TextStyle(
            color: Colors.grey.shade700,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _buildSourceActions() {
    return Positioned(
      right: 8,
      bottom: 8,
      child: Row(
        children: [
          _buildActionButton(
            icon: isRecording ? Icons.stop : Icons.mic,
            color: isRecording ? Colors.red : Colors.grey,
            onPressed: () => setState(() => isRecording = !isRecording),
            tooltip: isRecording ? 'Stop Recording' : 'Start Recording',
          ),
          _buildActionButton(
            icon: Icons.clear,
            onPressed: _sourceController.clear,
            tooltip: 'Clear Text',
          ),
        ],
      ),
    );
  }

  Widget _buildTargetActions() {
    return Positioned(
      right: 8,
      bottom: 8,
      child: _buildActionButton(
        icon: Icons.copy,
        onPressed: () {
          // Implement copy functionality
        },
        tooltip: 'Copy Translation',
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required VoidCallback onPressed,
    Color? color,
    required String tooltip,
  }) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        icon: Icon(icon, color: color ?? Colors.grey.shade700),
        onPressed: onPressed,
        tooltip: tooltip,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SizedBox(
              height: 160,
              width: 160,
              child: InkWell(
                onTap: () => Get.to(() => const PremiumScreenWeb()),
                child: Lottie.asset("assets/premiumanimation.json"),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade50,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 1000),
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                _buildLanguageCard(),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: _buildTranslationField(
                        isSource: true,
                        controller: _sourceController,
                        hintText: 'Enter text to translate',
                        language: isSwapped ? 'Dhivehi' : 'English',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.blue.shade400,
                        size: 28,
                      ),
                    ),
                    Expanded(
                      child: _buildTranslationField(
                        isSource: false,
                        controller: _targetController,
                        hintText: 'Translation will appear here',
                        language: isSwapped ? 'English' : 'Dhivehi',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}