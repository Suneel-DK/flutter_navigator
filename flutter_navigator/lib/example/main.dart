import 'package:flutter/material.dart';
import 'package:flutter_navigator/flutter_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Navigator Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              NavigatorHelper.to(context, const SecondPage()); // Navigate to SecondPage
            },
            child: const Text('Go to Second Page'),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back to previous page
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}
