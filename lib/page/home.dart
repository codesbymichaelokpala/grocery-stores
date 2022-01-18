import 'package:flutter/material.dart';
import 'package:michaelgroup/widgets/navigationdrawerwidget.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context)=>SafeArea(
    child: Scaffold(
      drawer: NavigationDrawerWidget(),
      body: CustomScrollView(
          slivers: [
            SliverAppBar( 
             pinned: true,
             floating: true,
             expandedHeight: 200.0,
             title: Text('What are you looking for ?'),
             backgroundColor: Colors.amber.shade700,

              ///this is the flexible part of the top bar
             flexibleSpace: buildsearch(),
                 
             ),
  
            BuildImages(context),
              
  
          ],
          ),
      ),
 
  );

  }


  Widget buildsearch() => Container(
    margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
    color: Colors.white70,
    child: TextField(
     decoration: InputDecoration(
       hintText: 'searchbar',
       prefixIcon: IconButton( icon:Icon(Icons.search) , onPressed:(){} ),
       suffixIcon: IconButton( icon:Icon(Icons.filter_alt_outlined), onPressed:(){} ),
       border: OutlineInputBorder(),
       ),
     keyboardType: TextInputType.text,
     textInputAction: TextInputAction.done,
    
    ),
  );

///the slier body goes here
Widget BuildImages(BuildContext context)=> SliverToBoxAdapter(
  child: Column(children: [
    Center(
      child: Column(
        children: [

       ///this is the Categories    
          Center(
            child:Chip(
              label: Text(
              'All Categories',
              style: TextStyle(
                color: Colors.white, fontSize: 20),
                ),
              backgroundColor: Color(0xFFba68c8),
              elevation: 4,
              shadowColor: Colors.grey[50],
              padding: EdgeInsets.all(4),
              ),
          ),

          Wrap(children: [
            chipDesign("Food", Color(0xFF4fc3f7)),
            chipDesign("Lifestyle", Color(0xFFffb74d)),
            chipDesign("Health", Color(0xFFff8a65)),
            chipDesign("Sports", Color(0xFF9575cd)),
            chipDesign("Nature", Color(0xFF4db6ac)),
            chipDesign("Fashion", Color(0xFFf06292)),
            chipDesign("Heritage", Color(0xFFa1887f)),
            chipDesign("City Life", Color(0xFF90a4ae)),
            chipDesign("Entertainment", Color(0xFFba68c8))
          ],),

  //this is the product grid-view
  //here all the products are loaded locall or from a network
    GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      primary: false,
      shrinkWrap: true,
      itemCount: 14,
      itemBuilder: (Buildcontext, index){
        return Column(
          children: [
            GridTile(
              child: Container(
                height: 160.0, width: 120.0,
                color: Colors.grey.shade200,
                margin: EdgeInsets.all(3.0),
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/${id[index].image}', fit: BoxFit.contain,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Text(id[index].name),
                    Text(id[index].price)
                                ], ),
                  ],
                ),
              ),
                ),
          ],
        );
      },
      ),



        ],
      ),
    ),

  
  


      
  ],),
);


///the chip design widget
 Widget chipDesign(String label, Color color) => Container(
  child: Chip(
   label: Text(
   label,
   style: TextStyle(
    color: Colors.white,),
    ),
  backgroundColor: color,
  elevation: 4,
  shadowColor: Colors.grey[50],
  padding: EdgeInsets.all(4),
  ),
  margin: EdgeInsets.only(left: 12, right: 12, top: 2, bottom: 2),
 );

 
//static products instance list
final List id=[
  Products(image: 'egypt.png',name: 'Egyptian', price: '1300'),
  Products(image: 'eligant.png',name: 'Car',price: '1455'),
  Products(image: 'jackets.png',name: 'Car',price: '300'),
  Products(image: 'jackets.png',name: 'Car',price: '3400'),
  Products(image: 'jw1.png',name: 'Car',price: '300'),
  Products(image: 'mini-skirt.png',name: 'Car',price: '3200'),
  Products(image: 'office-mini.png',name: 'Car',price: '300'),
  Products(image: 'party-time.png',name: 'Car',price: '300'),
  Products(image: 'pharoh.png',name: 'Car',price: '300'),
  Products(image: 'playstation-3.png',name: 'Car',price: '300'),
  Products(image: 'sneakers.png',name: 'Car',price: '300'),
  Products(image: 'dexktop.png',name: 'desktop',price: '300'),
  Products(image: 'timberland.png',name: 'land',price: '2000'),
  Products(image: 'kit.png',name: 'makeupkit',price: '1222'),
  Products(image: 'sneakers.png',name: 'fire image',price: '6333'),
  ];

class Products {
  String image; //location url for api endpoint
  String name;//location name for ui
  String price;//url for assets flag icon

  Products({ required this.image, required this.name, required this.price});
  }



 









  