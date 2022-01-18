import 'package:flutter/material.dart';
import 'package:michaelgroup/widgets/listwidgets.dart';
import 'package:michaelgroup/widgets/navigationdrawerwidget.dart';

class Messages extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: false,
            pinned: true,
            expandedHeight: 200.0,

            ///topbar
            flexibleSpace: FlexibleSpaceBar(
              centerTitle:true,
              background: Image.asset('assets/chatbg.png' , fit: BoxFit.cover,),
              title:Text(
                'Chat',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SliverFixedExtentList(
                itemExtent: 100.0,
                delegate: SliverChildListDelegate(
                  [
                   
                    listwidgets(
                      Colors.white,
                      "List item 1",
                    ),
                    listwidgets(
                      Colors.white,
                      "List item 2",
                    ),
                    listwidgets(
                      Colors.white,
                      "List item 3",
                    ),
                    listwidgets(
                      Colors.white,
                      "List item 4",
                    ),
                    listwidgets(
                      Colors.white,
                      "List item 1",
                    ),
                    listwidgets(
                      Colors.white,
                      "List item 2",
                    ),
                    listwidgets(
                      Colors.white,
                      "List item 3",
                    ),
                    listwidgets(
                      Colors.white,
                      "List item 4",
                    ),
                    listwidgets(
                      Colors.white,
                      "List item 1",
                    ),
                    listwidgets(
                      Colors.white,
                      "List item 2",
                    ),
                   
                  ],
                ),
             ),


        ], 
      ),


    );
  }

}
