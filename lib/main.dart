import 'package:flutter/material.dart';
import '../screens/landing_page.dart'; // adjust path if needed

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Huddle Landing Page',
      home: const LandingPage(),
    );
  }
}