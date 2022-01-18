import 'package:flutter/material.dart';
import 'package:michaelgroup/widgets/navigationdrawerwidget.dart';

class Cart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: NavigationDrawerWidget(),
     appBar:AppBar(
        title: Text('Cart Screen') ,),

      body: Center(
        child: Text('HELLO Cart SCREEN') ,), 

       
    );
  }
}