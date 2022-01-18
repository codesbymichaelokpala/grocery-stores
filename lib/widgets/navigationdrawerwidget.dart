import 'package:flutter/material.dart';
import 'package:michaelgroup/Help.dart';
import 'package:michaelgroup/page/chat.dart';
import 'package:michaelgroup/page/order.dart';
import 'package:michaelgroup/screen2.dart';
import 'package:michaelgroup/page/sell.dart';
import 'package:michaelgroup/page/notification.dart';
import 'package:michaelgroup/page/userpage.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final Padding=EdgeInsets.symmetric(horizontal: 10);
  

  @override
Widget build(BuildContext context) {
  final name = 'Michael Okpala';
  final email = 'micmictochukwu@gmail.com';
  final urlImage = 'assets/avater.jpg';

    return Scaffold(
      body: Drawer(
        backgroundColor: Colors.amberAccent.shade700,
        child: ListView(children: [
          buildHeader(
            urlImage: urlImage,
            name: name,
            email: email,

            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Profile(
              urlImage: urlImage,
              name: name,
              email: email,

              ),
              )
              )
          ),

          const SizedBox(height: 20,),
          buildMenuItem(
            text: 'My Order',
             icon: Icons.edit,
             onClicked: () => selectedItem(context, 0),
             ),
          const SizedBox(height: 20,),
          buildMenuItem(
            text: 'screen2',
             icon: Icons.chat,
             onClicked: () => selectedItem(context, 1),
             ),
          const SizedBox(height: 20,),   
          buildMenuItem(
            text: 'Notification',
             icon: Icons.notifications_active,
             onClicked: () => selectedItem(context, 2),
             ),
          const SizedBox(height: 20,),   
    
    ///this is the divididng line
          const SizedBox(height: 20,),
          Divider(color: Colors.white70,), 
          const SizedBox(height: 20,),

          const SizedBox(height: 20,),   
          buildMenuItem(
            text: 'Updates',
             icon: Icons.update,
             onClicked: () => selectedItem(context, 3),
             ),
    
          const SizedBox(height: 20,),   
          buildMenuItem(
            text: 'Plugins',
             icon: Icons.insert_link,
             onClicked: () => selectedItem(context, 4),
             ),
          const SizedBox(height: 20,),   
          buildMenuItem(
            text: 'Workflow',
             icon: Icons.workspaces_filled,
             onClicked: () => selectedItem(context, 5),
             ),    
    
    
    
        ],),
        ),
    );

  }

///this is the header
Widget buildHeader({
  required String urlImage,
  required String name,
  required String email,
  required VoidCallback onClicked,
}) =>
InkWell(
  onTap: onClicked,
  child: Container(
    padding: Padding.add(EdgeInsets.symmetric(vertical: 5.0)),
    child: Row(children: [
      Expanded(flex: 4, child: CircleAvatar(radius: 50, backgroundImage: AssetImage(urlImage),)),
      SizedBox(width:20),
      Expanded(flex: 8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
            SizedBox(height: 4,),
            Text(
              email,
              style: TextStyle(fontSize: 12, color: Colors.white70, overflow: TextOverflow.ellipsis ),
            )
          ],
        ),
      ),
      Spacer(),
      Expanded(flex: 2,
        child: CircleAvatar(
          radius: 24,
          backgroundColor: Color.fromRGBO(30, 60, 168, 1),
          child: Icon(Icons.mode_edit_outline, color: Colors.yellow,),
        ),
      )
    ],),) ,
);

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}){
  final color =Colors.white70;
  final fontweight = FontWeight.w500;
  return Container(
    padding: EdgeInsets.fromLTRB(10.0,10.0,10.0,0.0),
    child: ListTile(
      leading: Icon(icon,color: color),
      title: Text(text, style: TextStyle(color: color, fontSize: 15.0, fontWeight: fontweight)),
      hoverColor: Colors.white38,
      onTap: onClicked,
    ),
  );
}

void selectedItem(BuildContext context, int index){
  Navigator.of(context).pop();///to close drawer

  switch (index) {
    case 0:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Order(),
      ));    
    break;
    case 1:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context)=>Chat(),
      ));    
    break;
    case 2:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context)=>Cnotification(),
      ));    
    break;
    case 3:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context)=>Screen2(),
      ));    
    break;
    case 4:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context)=>Screen2(),
      ));    
    break;
    case 5:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context)=>Screen2(),
      ));    
    break;
    
  }
  
}  
}


