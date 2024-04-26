import 'package:flutter/material.dart';
import 'home.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  // Skip Button Method
  continueMethod(){
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => Home()),
            ( Route<dynamic>route) => false
    );
  }


  // Page Controller
  PageController pageController = PageController();


  int currentPage = 0;
  onChanged(int index ){
    setState(() {
      currentPage = index;
    });
  }

  List UnboardingContent  =[

    {
      "title": 'BMI Calculator',
      "images": 'images/first_bmi.jpg',
      "description": "You can calculate and evaluate your Body Mass Index"

    },
    {
      "title": 'Daliy Calorie Intake',
      "images": 'images/second_bmi.jpg',
      "description": "The number of calories needed each day to lose or gain weight"
    },

    {
      "title": 'Daily Water Intake',
      "images": 'images/third_bmi.webp',
      "description": "A normal human body requires about three liters of water"
    },
    {
      "title": 'Ideal Body Weight',
      "images": 'images/four_bmi.webp',
      "description": "Ideal weight Calulator Targets based on body composition "
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: continueMethod,
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                        color: Colors.white,fontSize: 20
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.black12,

        body: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              itemCount: UnboardingContent.length,
              onPageChanged: onChanged,
              itemBuilder: (context,index){
                return Column(
                  children: [

                    const SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(3, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          UnboardingContent[index]['images'],
                          height: 380,
                          width: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    const SizedBox(height: 25,),
                    Text(
                      UnboardingContent[index]['title'],
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(right: 5,left: 5),
                      child: Text
                        (UnboardingContent[index]['description'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                    )

                  ],
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 50,right: 50,left:50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  (currentPage == (UnboardingContent.length -1)) ?

                  ElevatedButton(
                    onPressed: continueMethod,
                    child: const Text(
                      'CONTINUE',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                      ),
                    ),
                  )

                      :Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        UnboardingContent.length, (index) {
                      return AnimatedContainer(
                        duration: const Duration(
                            milliseconds: 200),
                        height: 10,
                        width: (index == currentPage) ? 15 : 10 ,
                        margin: const EdgeInsets.symmetric(horizontal: 5,),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:(index == currentPage) ? Colors.green : Colors.white,

                        ),
                      );
                    }

                    ),
                  )

                ],
              ),
            ),
          ],
        )
    );
  }
}
