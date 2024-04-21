import 'package:flutter/material.dart';

class CalorieBurned extends StatefulWidget {
  const CalorieBurned({super.key});

  @override
  State<CalorieBurned> createState() => _CalorieBurnedState();
}

class _CalorieBurnedState extends State<CalorieBurned> {
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
          "Calorie Burned",
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
