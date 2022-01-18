import 'package:flutter/material.dart';
import 'package:michaelgroup/widgets/navigationdrawerwidget.dart';


class Cnotification extends StatefulWidget {

  @override
  _CnotificationState createState() => _CnotificationState();
}

class _CnotificationState extends State<Cnotification> {

  List locations=[
    WorldTime(url:'bird', location:'birdview', flag:'bird.png'),
    WorldTime(url:'kit', location:'kitview', flag:'kit.png'),
    WorldTime(url:'dexktop', location:'dexktopview', flag:'dexktop.png'),
    WorldTime(url:'hotdeals', location:'hotview', flag:'hotdeals.png'),
    WorldTime(url:'bird', location:'birdview', flag:'bird.png'),
    WorldTime(url:'kit', location:'kitview', flag:'kit.png'),
    WorldTime(url:'dexktop', location:'dexktopview', flag:'dexktop.png'),
    WorldTime(url:'hotdeals', location:'hotview', flag:'hotdeals.png'),
    WorldTime(url:'bird', location:'birdview', flag:'bird.png'),
    WorldTime(url:'kit', location:'kitview', flag:'kit.png'),
    WorldTime(url:'dexktop', location:'dexktopview', flag:'dexktop.png'),
    WorldTime(url:'hotdeals', location:'hotview', flag:'hotdeals.png'),
    WorldTime(url:'bird', location:'birdview', flag:'bird.png'),
    WorldTime(url:'kit', location:'kitview', flag:'kit.png'),
    WorldTime(url:'dexktop', location:'dexktopview', flag:'dexktop.png'),
    WorldTime(url:'hotdeals', location:'hotview', flag:'hotdeals.png'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('choose local'),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){},
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}') ,
                  ),

              ),
            ),
          );
        },
      ),
      

     
    );
  }
}





class WorldTime {
  String url; //location url for api endpoint
  String location;//location name for ui
  String flag;//url for assets flag icon


  WorldTime({ required this.location, required this.flag, required this.url});

}
