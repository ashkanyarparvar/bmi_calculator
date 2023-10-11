import 'package:flutter/material.dart';
import 'package:flutter_bmi2/Shaps/left_shaps.dart';

import 'package:flutter_bmi2/Shaps/right_shaps.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  double resultBMI = 0;
  String resultText = '';
  double widthGood = 500;
  double widthBad = 500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.black, fontSize: 50),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent
          ),
          
          
      body: SafeArea(
        child:  Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 250,
                    child: TextField(
                      controller: weightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'kg',
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.9),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    ':وزن',
                    style: TextStyle(fontSize: 30),
                  ),
                  Container(
                    width: 250,
                    child: TextField(
                      controller: heightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30, 
                        color: Colors.black
                        ),
                        
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'm',
                        
                        
                        hintStyle: TextStyle(
                          
                          color: Colors.grey.withOpacity(0.9),
                          
                          
                        ),
                      ),
                    ),
                  ),
                  Text(
                    ':قد',
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
              SizedBox(height: 100),
              TextButton(
                onPressed: () {
                  final weight = double.parse(weightController.text);
                  final height = double.parse(heightController.text);
                  setState(() {
                    resultBMI = weight / (height * height);
                    if (resultBMI > 25){
                      widthBad = 200;
                      widthGood = 50;
                      resultText = 'شما اضافه وزن دارید';
                    }else if(resultBMI >= 18.5 && resultBMI <= 25){
                      widthBad = 50;
                      widthGood = 200;
                      resultText = 'وزن شما نرمال است';
                    }else {
                      widthBad = 10;
                      widthGood = 10;
                      resultText = 'وزن شما کمتر از حد نرمال است';
                    }
                  });
                },
                child: Text(
                  'محاسبه کن',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                
              ),
              SizedBox(height: 100),
              Text('${resultBMI.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 30),
              Text('$resultText'),
             
              SizedBox(height: 100),
              RightShape(
                width: widthGood
              ),
              SizedBox(height: 20),
              RightShape( width: widthGood),
              SizedBox(height: 20),

              RightShape(
                width: widthGood,
              ),
              SizedBox(height: 30),
              LeftShape(width: widthBad),
              SizedBox(height: 20),
              LeftShape(width: widthBad),
              SizedBox(height: 20),
              LeftShape(width: widthBad),
            ],
          ),
        ),
      );
    
  }
}
