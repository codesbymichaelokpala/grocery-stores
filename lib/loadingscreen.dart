import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:michaelgroup/page/home.dart';

class loadingscreen extends StatefulWidget {

  @override
  _loadingscreenState createState() => _loadingscreenState();
}

class _loadingscreenState extends State<loadingscreen> 
  with SingleTickerProviderStateMixin{
  late AnimationController controller;
  
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 10),
     vsync: this,
       ); 

    controller.addStatusListener((status) {
      if (status==AnimationStatus.completed){
        setState(() {
           Navigator.of(context).push(MaterialPageRoute(
           builder: (context)=>Home(),
            ));
        });   
      }
      else{
        print('something went wrong');
      };
    }) ;    
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
      child: Lottie.asset(
        'assets/blobby-loader-green.json',
        height: 150,
        width: 150,
        repeat: true,
        controller: controller,
        onLoaded: (composition){
          controller.forward();
        },
        ),
    ) ,
    );
  }
}


