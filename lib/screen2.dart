import 'package:flutter/material.dart';


class Screen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      actions: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
        ),
          ],
        title: Text(
          'Drawer with wrapper',
         style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          ),
        ),
    ),
    body: Container(
      color: Colors.grey[200],
            child:Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 20.0),
                child: Text('sub heading of first row inside a column'),
              ),

              ///this the body content
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Expanded(
                    
                    child: Container(
                      color: Colors.white54,
                      child: Column(
                        children: [
                          Image.asset('assets/Fire.png', height: 100.0,width: 150.0,),
                          Text(
                          'Trend',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight:FontWeight.bold,
                              letterSpacing: 2.0,
                              color: Colors.black
                            ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset('assets/hotdeals.png', height: 100.0,width: 150.0,),
                        Text(
                        'Trend',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight:FontWeight.bold,
                            letterSpacing: 2.0,
                            color: Colors.black
                          ),
                          ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset('assets/Fire.png', height: 100.0,width: 150.0,),
                        Text(
                        'Trend',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight:FontWeight.bold,
                            letterSpacing: 2.0,
                            color: Colors.black
                          ),
                          ),
                      ],
                    ),
                  ),
                  

                ],
              ),

              SizedBox(height: 10.0,),

              ///categories go here
               Wrap(
                 spacing: 10.0,
                 runSpacing: 10.0,
                alignment: WrapAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(1.0),
                    color: Colors.white54,
                    child: Column(
                      children: [
                        Image.asset('assets/kit.png', height: 100.0,width: 100.0,),
                        Text(
                        'Makeup',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight:FontWeight.bold,
                            letterSpacing: 2.0,
                            color: Colors.black
                          ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white54,
                    child: Column(
                      children: [
                        Image.asset('assets/dexktop.png', height: 100.0,width: 100.0,),
                        Text(
                        'Electronics',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight:FontWeight.bold,
                            letterSpacing: 2.0,
                            color: Colors.black
                          ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white54,
                    child: Column(
                      children: [
                        Image.asset('assets/car.png', height: 100.0,width: 100.0,),
                        Text(
                        'Car',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight:FontWeight.bold,
                            letterSpacing: 2.0,
                            color: Colors.black
                          ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white54,
                    child: Column(
                      children: [
                        Image.asset('assets/property.png', height: 100.0,width: 100.0,),
                        Text(
                        'Property',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight:FontWeight.bold,
                            letterSpacing: 2.0,
                            color: Colors.black
                          ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white54,
                    child: Column(
                      children: [
                        Image.asset('assets/land.png', height: 100.0,width: 100.0,),
                        Text(
                        'Trend',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight:FontWeight.bold,
                            letterSpacing: 2.0,
                            color: Colors.black
                          ),
                          ),
                      ],
                    ),
                  ),
                  

                ],
              ),



            ],
            ),
          
    ),


    
      );
  }
}