import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton(this.icon,{super.key,this.onPressed});

  @override
  Widget build(BuildContext context) {

        var b = FloatingActionButton(onPressed: this.onPressed,

        child: Icon(this.icon),
        );


        return b;


  }




}