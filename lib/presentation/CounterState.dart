import 'package:counter/presentation/CustomButton.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CounterState extends State{
  int myClicks= 0;
  String label = "Clicks";
  @override
  Widget build(BuildContext context) {


    return  Scaffold(

        body:
                Center(child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                              Text("$myClicks",style: TextStyle(fontSize: 100),),
                              Text(myClicks==1?label="click":"clicks")
                                         ],
                             )
                        ,
                ),
        floatingActionButton:
          Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(Icons.abc_outlined,onPressed: (){

                      myClicks=myClicks+10;
                      setState(() {

                      });

                    },),
SizedBox(height: 14,),
                    CustomButton(Icons.cabin,onPressed: (){

                      Random random = new Random();
                      int randomNumber = random.nextInt(100); // f
                      myClicks = myClicks+ randomNumber;


                      setState(() {

                      });
                    },),
                    SizedBox(height: 14,),
                    FloatingActionButton
                      (
                      onPressed:(){
                        print("pressed");
                        myClicks=0;
                        setState(() {});



                      },
                      child: Icon(Icons.refresh_outlined),
                    ),
                    SizedBox(height: 14,),
                    FloatingActionButton
                      (
                      onPressed:(){
                        print("pressed");
                        if (myClicks>0)
                        myClicks=myClicks-1;
                        setState(() {});



                      },
                      child: Icon(Icons.exposure_minus_1),
                    ),
                    SizedBox(height: 14,),
                    FloatingActionButton
                      (
                      onPressed:(){
                        print("pressed");
                        myClicks=myClicks+1;
                        setState(() {});



                      },
                      child: Icon(Icons.plus_one),
                    )

                  ],
          )

        ,


      );


  }





}