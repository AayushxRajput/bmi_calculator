import 'package:flutter/material.dart';

class DailyCalorieIntake extends StatefulWidget {
  const DailyCalorieIntake({super.key});

  @override
  State<DailyCalorieIntake> createState() => _DailyCalorieIntakeState();
}

class _DailyCalorieIntakeState extends State<DailyCalorieIntake> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor:Colors.blueGrey ,
        title: const Text(
          "Daily Calorie Intake",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
