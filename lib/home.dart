import 'package:flutter/material.dart';
import 'home_children/body_mass_index.dart';
import 'home_children/calorie_burned.dart';
// import 'home_children/daily_calorie_intake.dart';
import 'home_children/daily_water_intake.dart';
import 'home_children/select_male_female.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

 final List<Map<String,dynamic>> aayush =[

   {'text': 'Body Mass Index', 'images': 'images/home1.png'},
   {'text': 'Daily Water Intake', 'images': 'images/home2.png'},
   {'text': 'Daily Calorie Intake', 'images': 'images/home3.png'},
   {'text': 'Calorie Burned', 'images': 'images/home4.png'},

   ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF98E761),
      appBar: AppBar(
        backgroundColor: const Color(0xff645b5bff),
        title: const Text(
              "Home",
              style: TextStyle(
              color: Colors.white,
              fontSize: 30,fontWeight: FontWeight.bold
         ),
        ),
      ),

      body: Column(
        children: [


          Padding(
            padding: const EdgeInsets.only(top: 20),
             child: Container(
               height: 200,
               width: 360,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.grey[300],
               ),

               child: ClipRRect(
                 borderRadius: BorderRadius.circular(20),
                 child: Stack(
                   children: [
                     Positioned.fill(
                       child: Image.asset(
                         'images/home6.jpg',
                         fit: BoxFit.cover,
                       ),
                     ),

                     Positioned.fill(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Colors.white.withOpacity(0.5), // Semi-transparent white layer
                         ),
                       ),
                     ),

                     const Padding(
                       padding: EdgeInsets.all(16.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [

                           Text(
                             'Health',
                             style: TextStyle(
                               fontSize: 30,
                               fontWeight: FontWeight.bold,
                               color: Colors.white,
                             ),
                           ),
                           Text(
                             'Calculator',
                             style: TextStyle(
                               fontSize: 30,
                               fontWeight: FontWeight.bold,
                               color: Colors.white,
                             ),
                           ),

                           SizedBox(height: 30),
                           Text(
                             'Stay fit & calculate with your favorite health tool accurately & easily',
                             style: TextStyle(
                               fontSize: 18,
                               color: Colors.blueGrey,
                               fontWeight: FontWeight.w500,
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             )
          ),

          Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),

              itemBuilder: (BuildContext context , int index){
                return GestureDetector(

                  onTap: () {

                    if (index == 0) {
                      // Navigate to the Body Mass Index screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BodyMassIndex()),
                      );
                    }

                    else if (index == 1) {
                      // Navigate to the Daily Water Intake screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DailyWaterIntake()),
                      );
                    }

                    else if (index == 2) {
                      // Navigate to the Daily Calorie Intake screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MaleFemaleScreen()),
                      );
                    }

                    else if (index == 3) {
                      // Navigate to the Calorie Burned screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CalorieBurned()),
                      );
                    }

                  },

                  child: Padding(
                    padding: const EdgeInsets.only(top: 40,left: 15,right: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 10,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ]
                      ),
                  
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Image.asset(
                            aayush[index]['images']!,
                            height: 80,
                          ),
                  
                          const SizedBox(height: 10),
                          Text(
                            aayush[index]['text']!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                  
                  
                    ),
                  ),
                );
              },
            ),
          ),



        ],
      ),
    );
  }
}