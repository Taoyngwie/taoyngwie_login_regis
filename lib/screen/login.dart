import 'package:flutter/material.dart';

class LogingScreen extends StatefulWidget {
  const LogingScreen({super.key});

  @override
  State<LogingScreen> createState() => _LogingScreenState();
}

class _LogingScreenState extends State<LogingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login ")),
    );
  }
}
