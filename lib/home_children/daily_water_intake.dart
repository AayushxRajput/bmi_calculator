import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class DailyWaterIntake extends StatefulWidget {
  const DailyWaterIntake({super.key});

  @override
  State<DailyWaterIntake> createState() => _DailyWaterIntakeState();
}

class _DailyWaterIntakeState extends State<DailyWaterIntake> {
  static const double waterIntakePerKg = 0.045;
  int _currentValue = 10;


  double calculateDailyWaterIntake(int weightInKg) {
    return weightInKg * waterIntakePerKg;
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor:Colors.blueGrey ,
          title: const Text(
            "Daily Water Intake",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
             ),
          ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [


            //What is Your Weight
            const SizedBox(height: 70,),
            const Text(
              'What is Your Weight ?',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),

            // NumberPicker
            const SizedBox(height: 80,),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(10, 6),
                    ),
                  ],
                ),

                padding: const EdgeInsets.all(16.0),
                child: NumberPicker(
                  value: _currentValue,
                  minValue: 10,
                  maxValue: 400,
                  onChanged: (value) => setState(() => _currentValue = value),
                  textStyle: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  selectedTextStyle: const TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
            ),

            // Text For KG
            const SizedBox(height: 40,),
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(10, 6),
                    ),
                  ],
                color: Colors.white
              ),
              child: const Center(
                child:  Text( "KG",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Calculate Button
            const SizedBox(height: 40,),
            ElevatedButton(
              onPressed: () {

                final dailyWaterIntake = calculateDailyWaterIntake(_currentValue);
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: Colors.green,
                    title: const Text(
                        'Recommended Daily Water Intake',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),

                    content: Text(
                        'Based on your weight of $_currentValue KG, '
                            'your recommended daily water intake is'
                            ' ${dailyWaterIntake.toStringAsFixed(2)} liters.',
                        style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                    ),
                  ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text(
                            'OK',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
              ),

              child: const Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
