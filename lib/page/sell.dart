
import 'package:flutter/material.dart';
import 'package:michaelgroup/widgets/navigationdrawerwidget.dart';

class Sell extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: NavigationDrawerWidget(),
     appBar:AppBar(
       backgroundColor: Colors.pink.shade400,
        title: Text('Sell Products/service', style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.w600),),
        centerTitle: true, 
        ),


      body: Center(
        child: Text('HELLO SELL SCREEN') ,), 
         
       
    );
  }
}