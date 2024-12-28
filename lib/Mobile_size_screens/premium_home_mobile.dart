import 'package:flutter/material.dart';

class PremiumHomeScreen extends StatefulWidget {
  const PremiumHomeScreen({super.key});

  @override
  State<PremiumHomeScreen> createState() => _PremiumHomeScreenState();
}

class _PremiumHomeScreenState extends State<PremiumHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Premium Home Mobile"),),
    );
  }
}