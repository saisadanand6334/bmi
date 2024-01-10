import 'package:bmicalcul/splash.dart';
import 'package:flutter/material.dart';
import 'fresu.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: const Splash()));
}

class Wacall extends StatefulWidget {
  const Wacall({Key? key}) : super(key: key);

  @override
  State<Wacall> createState() => _WacallState();
}

class _WacallState extends State<Wacall> {
  double slider = 50;
  int weight = 0;
  int age = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(fontFamily: 'BungeeInline',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.deepOrange),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 17,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.lightBlue,
                      ),
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male_rounded,
                            size: 100,
                            color: Colors.black,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.lightBlue,
                      ),
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female_rounded,
                            size: 100,
                            color: Colors.black,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.indigo),
                      height: 200,
                      child: Column(children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'HEIGHT',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '$slider cm',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Slider(
                          min: 50,
                          max: 300,
                          inactiveColor: Colors.white,
                          activeColor: Colors.red,
                          divisions: 250,
                          value: slider,
                          onChanged: (value) {
                            setState(() {
                              slider = value;
                            });
                          },
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

               Row(
                 children: [
                   Expanded(
                     child: Container(
                       width: 200,
                       height: 300,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(25),
                         color: Colors.lightBlue,
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(
                             "WEIGHT",
                             style: TextStyle(color: Colors.black, fontSize: 50),
                           ),
                           Text(
                             "$weight",
                             style: TextStyle(color: Colors.white, fontSize: 50),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               FloatingActionButton(
                                 onPressed: () {
                                   setState(() {
                                     if (weight == 0) {
                                       weight = 0;
                                     } else {
                                       weight--;
                                     }
                                   });
                                 },
                                 backgroundColor: Colors.orangeAccent,
                                 child: Icon(
                                   Icons.remove,color: Colors.black,
                                 ),
                               ),
                               SizedBox(
                                 width: 20,
                               ),
                               FloatingActionButton(
                                 onPressed: () {
                                   setState(() {
                                     weight++;
                                   });
                                 },
                                 backgroundColor: Colors.black,
                                 child: Icon(Icons.add,color: Colors.orange,),
                               ),
                             ],
                           )
                         ],
                       ),
                     ),
                   ),
                   SizedBox(
                     width: 20,
                   ),
                   Expanded(
                     child: Container(
                       height: 300,
                       width: 200,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(25),
                         color: Colors.lightBlue,

                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("AGE",
                             style: TextStyle(fontSize: 50,
                                 color: Colors.black),
                           ),
                           Text("$age",
                             style: TextStyle(fontSize: 50,
                                 color: Colors.white),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               FloatingActionButton(onPressed: () {
                                 setState(() {
                                   if(age==0){
                                     age=0;
                                   }
                                   else{
                                     age--;
                                   }
                                 });
                               },
                               backgroundColor: Colors.black,
                                 child: Icon(
                                   Icons.remove,color: Colors.orange,
                                 ),
                               ),
                               SizedBox(width: 20,),
                               FloatingActionButton(onPressed: () {
                                 setState(() {
                                   age++;
                                 });
                               },
                               backgroundColor: Colors.orange,
                                 child: Icon(Icons.add,color: Colors.black,),
                               ),
                             ],
                           )
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
               SizedBox(height: 20,),
               Container(
                    height: 50,
                    width: double.maxFinite,
                    color: Colors.blueAccent,
                    child: TextButton(onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Spoti(slider,weight,age)
                      ),
                      );
                    }, child: Text('CALCULATE',
                      style: TextStyle(fontSize: 30,fontFamily:'BungeeInline',
                        color: Colors.black,
                      ),)),
                 )
            ],
          ),
        ),
      ),
    );
  }
}
