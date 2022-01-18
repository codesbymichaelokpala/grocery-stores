import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(
       backgroundColor: Colors.pink.shade400,
        title: Text('Chat', style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w600),),
        centerTitle: true, 
        ),

     
    );
  }
}