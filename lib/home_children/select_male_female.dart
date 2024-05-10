import 'package:flutter/material.dart';
import 'Male_Female/female.dart';
import 'Male_Female/male.dart';

class MaleFemaleScreen extends StatefulWidget {
  const MaleFemaleScreen({super.key});

  @override
  State<MaleFemaleScreen> createState() => _MaleFemaleScreenState();
}

class _MaleFemaleScreenState extends State<MaleFemaleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MaleScreen()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('images/black_male.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                width: 150,
                height: 250,
              ),
            ),
            SizedBox(width: 20),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FemaleScreen()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('images/black_female.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                width: 150,
                height: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}