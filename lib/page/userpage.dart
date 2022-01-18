import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final String name;
  final String urlImage;
  final String email;

  const Profile({
    Key? key,
    required this.name,
    required this.urlImage,
    required this.email
  }) :super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final double coverHeight = 280;
  final double profileHeight = 180;

  @override
  Widget build(BuildContext context) {
    final name = 'Michael Okpala';
    final email = 'micmictochukwu@gmail.com';
    final urlImage = 'assets/avater.jpg';
    final top = coverHeight - profileHeight / 2;

    return Scaffold(
       appBar:AppBar(
       backgroundColor: Colors.pink.shade400,
        title: Text('User_Profile', style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w600),),
        centerTitle: true, 
        ),

      body: ListView(
        children:[
          //top widget
           buildTop( top:top, email:email,name:name,urlImage:urlImage),
          ///body list widget
          buildContent(), 

           ],
           ),
       
    );
  }




 
///contenet build widgets 
  Widget buildContent() => Container(
    padding: EdgeInsets.symmetric(horizontal: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8,),
        Text(
          'Name goes here',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500 ),
        ),
        const SizedBox(height: 8,),
         Text(
          'wechat@mail.com',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w100),
        ),
        const SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSocialIcon(Icons.facebook),
            const SizedBox(width: 12),
            buildSocialIcon(Icons.whatshot),
            const SizedBox(width: 12),
            buildSocialIcon(Icons.link_outlined),
            const SizedBox(width: 12),
            buildSocialIcon(Icons.messenger),
          ],
        ),
        const SizedBox(height: 16),
         Text(
          'About',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500 ),
        ),
        const SizedBox(height: 16,),
        Text(
          'You are registered here as a customer and so will be provided with products from retailers, you can change this in the setting option or click on the sell navigation bar',
          style: TextStyle(fontSize: 18, height: 1.4),
        )

      ],
    ),
  );


///social
   Widget buildSocialIcon(IconData icon) => CircleAvatar(
     radius: 25,
     child: Icon(icon)  ,
    
   );
//top build widgets
  Stack buildTop({
  required double top,
  required String urlImage,
  required String name,
  required String email,
}) => Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: profileHeight / 2 ),
          child: buildCoverImage()),
        Positioned(
          top: top,
          child: buildProfileImage(context)
          )
      ],

    );
  }

  Widget buildCoverImage() => Container(
    color: Colors.grey,
    child: Image.asset(
      'assets/chatbg.png',
      width: double.infinity,
      height: 280.0,
      fit:BoxFit.cover ),
  );

  Widget buildProfileImage(context) => CircleAvatar(
    radius: 180 / 2,
    backgroundColor: Colors.grey.shade600,
    backgroundImage: AssetImage('assets/avater.jpg'),
   
  );

