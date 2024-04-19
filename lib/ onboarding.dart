import 'package:bmi_calculator/content_model.dart';
import 'package:flutter/material.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,

      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                itemCount: contents.length,
                itemBuilder: (_,i){

                  return  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Image.asset(contents[i].images,
                                  height: 500,
                                  width:  250,
                                ),
                              ),

                               Text(
                                contents[i].title,
                                 style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                              const SizedBox(height: 10,),
                               Text(
                                contents[i].discription,
                                 textAlign: TextAlign.center,
                                  style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );


                }
            ),
          ),

          Container(),
          Container(
            height: 40,
            margin: const EdgeInsets.only(left: 200),
            width: double.infinity,
            child: ElevatedButton(
              child: Text('Next',style: TextStyle(color: Colors.white),),
              onPressed: () {  },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
            ),
          ),


        ],
      )
    );
  }
}
