import 'package:flutter/material.dart';

  class BodyMassIndex extends StatefulWidget {
  const BodyMassIndex({super.key});

  @override
  State<BodyMassIndex> createState() => _BodyMassIndexState();
}

class _BodyMassIndexState extends State<BodyMassIndex> {

  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _feetController = TextEditingController();
  final TextEditingController _inchesController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.cyan,
      appBar:AppBar(
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back),
          iconSize: 20.0,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor:Colors.blueGrey ,
        title: const Text(
             "Body Mass Index",
              style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
                color: Colors.black,
          ),
        ),
      ),

      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child:  SingleChildScrollView(
          child: Column(
            children: [

              //Enter Age Text
              const SizedBox(height: 15,),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter Age',
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              //Enter Age TextField
              const SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _ageController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),

                        hintText: 'Enter Age ',
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),

                  const SizedBox(width: 10,),
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 8,
                          offset: const Offset(10, 6),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        "Age",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                ],
              ),

              //Enter Height Text
              const SizedBox(height: 30,),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter Height',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              //Enter Height TextField
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _feetController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Feet',
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),


                  const SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      controller: _inchesController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Inch',
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(width: 10,),
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 8,
                          offset: const Offset(10, 6),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        "Height",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //Enter Weight Text
              const SizedBox(height: 30,),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter Weight',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              //Enter Weight TextField
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0,right: 30),
                      child: TextField(
                        controller: _weightController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Enter Weight',
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10,),
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 8,
                          offset: const Offset(10, 6),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        "Weight",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //Calculate Button
              const SizedBox(height: 40,),
              ElevatedButton(
                onPressed: () {
                  // Retrieve the values from the text fields
                  int? age = int.tryParse(_ageController.text);
                  double? feet = double.tryParse(_feetController.text);
                  double? inches = double.tryParse(_inchesController.text);
                  double? weight = double.tryParse(_weightController.text);

                  // Check if all required values are entered
                  if (age != null && feet != null && inches != null && weight != null) {
                    // Convert height from feet and inches to meters
                    double heightInMeters = (feet * 0.3048) + (inches * 0.0254);

                    // Convert weight from pounds to kilograms
                    double weightInKilograms = weight * 0.453592;

                    // Calculate BMI
                    double bmi = weightInKilograms / (heightInMeters * heightInMeters);

                    // Display the calculated BMI
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Colors.green,
                        title: const Text(
                            'BMI Result',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 29,
                          ),
                        ),

                        content: Text(
                            'Your BMI is: ${bmi.toStringAsFixed(2)}',
                            style: const TextStyle(
                             color: Colors.black,
                              fontWeight: FontWeight.w400,
                             fontSize: 24,
                           )
                         ),

                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
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
                  } else {
                    // Display an error message if any field is empty
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Error'),
                        content: const Text(
                            'Please enter all required values.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
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
      ),
    );
  }
}
