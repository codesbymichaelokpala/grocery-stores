import 'package:flutter/material.dart';
import 'package:michaelgroup/page/homewidget.dart';
import 'package:michaelgroup/page/sell.dart';
import 'package:michaelgroup/page/messages.dart';
import 'package:michaelgroup/page/cart.dart';

void main() {
  runApp(
    MaterialApp(home: MainPage()),
  ); 
}

class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late ScrollController controller;

  @override
  void initState(){
    super.initState();

    controller=ScrollController();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  int index = 0;
  final screens = [
    Home(),
    Sell(),
    Messages(),
    Cart()
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    body: screens[index],
    bottomNavigationBar: NavigationBarTheme(
        ///this is the navbar decoration
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500)
          ),
           ),
    
        child: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: Duration(seconds: 1),
          height: 60,
          backgroundColor: Colors.amber.shade300,
          selectedIndex: index,
          onDestinationSelected: (index) => 
          setState(() => this.index = index),
    
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.monetization_on_outlined),
              selectedIcon: Icon(Icons.monetization_on_rounded),
              label: 'Sell',
            ),
            NavigationDestination(
              icon: Icon(Icons.chat_bubble_outline),
              selectedIcon: Icon(Icons.chat),
              label: 'Chat',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_bag_outlined),
              selectedIcon: Icon(Icons.shopping_bag_rounded),
              label: 'Cart',
            ),
          ],
        ),
      ),
  );
}




