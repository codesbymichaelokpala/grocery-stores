import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:michaelgroup/Help.dart';
import 'package:michaelgroup/page/homewidget.dart';
import 'package:michaelgroup/page/productpage.dart';
import 'package:michaelgroup/page/sell.dart';
import 'package:michaelgroup/page/messages.dart';
import 'package:michaelgroup/page/cart.dart';
import 'package:michaelgroup/page/userpage.dart';

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
  bool isBottomVisible = true;

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
    Productpage(),
    Help()
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    ///the body contents
    body: NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        if (notification.direction == ScrollDirection.forward){
          setState(() => isBottomVisible = true);
        } else if (notification.direction == ScrollDirection.reverse){
          setState(() => isBottomVisible = false);
        }
        return true;
      },
      child: screens[index]
      ),

    ///the bottom nav content
    bottomNavigationBar: isBottomVisible
    ? NavigationBarTheme(
        ///this is the navbar decoration
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)
          ),
           ),
    
        child: NavigationBar(
         // labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
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
              icon: Icon(Icons.account_circle_outlined),
              selectedIcon: Icon(Icons.account_circle_rounded),
              label: 'User',
            ),
            NavigationDestination(
              icon: Icon(Icons.help_outline),
              selectedIcon: Icon(Icons.help),
              label: 'Help',
            ),
          ],
        ),
      )
      :null,
    );
}