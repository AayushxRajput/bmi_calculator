import 'package:flutter/material.dart';

class DailyWaterIntake extends StatefulWidget {
  const DailyWaterIntake({super.key});

  @override
  State<DailyWaterIntake> createState() => _DailyWaterIntakeState();
}

class _DailyWaterIntakeState extends State<DailyWaterIntake> {
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
          "Daily Water Intke",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      body: Container(

      ),
    );
  }
}
