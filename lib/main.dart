import 'package:counter/presentation/Counter.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  print("starting out");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

      return  MaterialApp(
        home: Counter(),
        debugShowCheckedModeBanner: false,

      );
  }
  
  String text(){
    Random random = new Random();
    int randomNumber = random.nextInt(1000); // f
    return randomNumber.toString();
  }
  

}
