import 'package:flutter/material.dart';
import ' onboarding.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.orange
      ),
      title: 'Bmi Calculator',
      home: const Onbording(),
    );
  }
}
