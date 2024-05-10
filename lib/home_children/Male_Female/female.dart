import 'package:flutter/material.dart';

class FemaleScreen extends StatefulWidget {
  const FemaleScreen({super.key});

  @override
  State<FemaleScreen> createState() => _FemaleScreenState();
}

class _FemaleScreenState extends State<FemaleScreen> {
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
          "Daily Calorie Intake",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
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
