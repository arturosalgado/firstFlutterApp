import 'package:counter/presentation/CustomButton.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CounterState extends State{
  int myClicks= 0;
  Clicks c=Clicks(0);
  String label = "Clicks";

  CounterState(){
    c = Clicks(myClicks);

  }
  @override
  Widget build(BuildContext context) {

    var children = [
      CustomButton(Icons.abc_outlined,onPressed: (){

        c.clicks = c.clicks+10;
        setState(() {

        });

      },),
      SizedBox(height: 14,),
      CustomButton(Icons.cabin,onPressed: (){

        Random random = new Random();
        int randomNumber = random.nextInt(100); // f
        c.clicks = c.clicks + randomNumber;


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

    ];


    var new_children =   getPair(this.c)+ children;


    return  Scaffold(

        body:
                Center(child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                              Text("${c!.getClicks()}",style: TextStyle(fontSize: 100),),
                              Text(myClicks==1?label="click":"clicks")
                                         ],
                             )
                        ,
                ),
        floatingActionButton:
          Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: new_children,
          )

        ,


      );


  }


  List<Widget> getPair(Clicks c){


    var b = CustomButton(Icons.ac_unit,onPressed: (){
      print("pressed");
      setState(() {
        c.clicks = c.clicks-5;
      });

    },);

    var box = SizedBox(height: 10,);

    return [b,box];


  }


}

class Clicks{

  int clicks=0;
  Clicks(this.clicks);

  int getClicks(){
    return this.clicks??0;
  }

}