
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:lottie/lottie.dart';
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
             stretch: true,
             pinned: true,
             floating: true,
             title: Container(
               margin: EdgeInsets.all(10.0),
               color: Colors.white70,
               child: buildsearch()),
             titleTextStyle: TextStyle(fontSize: 18.0),
             backgroundColor: Colors.grey.shade800,

              ///this is the flexible part of the top bar
            //  flexibleSpace: FlexibleSpaceBar(
            //    //background: Lottie.asset('shopping.json' , fit: BoxFit.cover),
            //    background: Image.asset('assets/chatbg.png', fit: BoxFit.cover),
            //    title: Text('what are you looking for ? '),
            //    centerTitle: true,
            //    titlePadding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
            //    stretchModes: [
            //     StretchMode.fadeTitle,
            //     StretchMode.blurBackground,
            //     StretchMode.zoomBackground
            //    ],
            //  ),
            
             actions: [
               Stack(
                 children: [
                   IconButton(
                     alignment: Alignment.centerRight,
                   onPressed: (){},
                    icon: Icon(Icons.shopping_cart, )
                  ),
                  CircleAvatar(radius: 10, child: Text('4'),)
                 ],
               )
                 
             ],
                 
             ),
  
            BuildImages(context),
              
  
          ],
          ),
      ),
 
  );

  }

  Widget buildsearch() =>  TextField(
      style: TextStyle(
        color: Colors.red.shade300,
      ),
           decoration: InputDecoration(
             hintText: 'searchbar',
             prefixIcon: IconButton( icon:Icon(Icons.search) , onPressed:(){
               print('search button pressed');
             } ),
             suffixIcon: IconButton( icon:Icon(Icons.filter_alt_outlined), onPressed:(){
               print('filter button pressed');
             } ),
             //icon: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined)) ,
             border: OutlineInputBorder(),
             ),
            
           keyboardType: TextInputType.text,
           textInputAction: TextInputAction.done,
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
  Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        color: Colors.blue.shade200,
        alignment: Alignment.centerRight,
        width: double.infinity, 
        height: 50.0,
        child: Text('First scrollview', style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.w600, color: Colors.yellowAccent, letterSpacing: 2 ),),
      ),
    GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 10.0
        ),
      primary: false,
      shrinkWrap: true,
      itemCount: 14,
      itemBuilder: (Buildcontext, index){
        return CupertinoContextMenu(
          ///the cupertio menu
          actions: [
            CupertinoContextMenuAction(
              child: Text('add favorite'),
              trailingIcon: CupertinoIcons.heart,
              onPressed: (){
                print('action executed');
                Navigator.pop(context);
              },
              ),
              CupertinoContextMenuAction(
              child: Text('add Cart'),
              trailingIcon: CupertinoIcons.cart,
              onPressed: (){
                print('action executed');
                Navigator.pop(context);
              },
              ),
              CupertinoContextMenuAction(
              child: Text('Delete'),
              isDestructiveAction: true,
              trailingIcon: CupertinoIcons.delete,
              onPressed: (){
                print('action executed');
                Navigator.pop(context);
              },
              )
          ],
          child: GridTile(
            child:Padding(
              padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,40),
              child: Image.asset('assets/${id[index].image}', fit: BoxFit.fitWidth,),
            ),
            ///footer of items
            footer: Container(
              color: Colors.amberAccent,
              padding: EdgeInsets.all(5.0),
              child: Column (
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(id[index].name, style: TextStyle(fontSize: 18.0, color: Colors.black54)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('price', style: TextStyle(fontSize: 15.0, color: Colors.grey),),
                      SizedBox(width: 20),
                      Text(id[index].price, style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600, color: Colors.grey.shade700),),
                    ],
                  )
                   ],
               ),
            ),
          ),
        );
      },
      ),

      ///making a similar grid with add to cart button
      Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        color: Colors.red.shade200,
        alignment: Alignment.centerRight,
        width: double.infinity, 
        height: 50.0,
        child: Text('Second scrollview', style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.w600, color: Colors.yellowAccent, letterSpacing: 2 ),),
      ),
      GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 10.0
        ),
      primary: false,
      shrinkWrap: true,
      itemCount: 14,
      itemBuilder: (Buildcontext, index){
        return CupertinoContextMenu(
          ///the cupertio menu
          actions: [
            CupertinoContextMenuAction(
              child: Text('add favorite'),
              trailingIcon: CupertinoIcons.heart,
              onPressed: (){
                print('action executed');
                Navigator.pop(context);
              },
              ),
              CupertinoContextMenuAction(
              child: Text('add Cart'),
              trailingIcon: CupertinoIcons.cart,
              onPressed: (){
                print('action executed');
                Navigator.pop(context);
              },
              ),
              CupertinoContextMenuAction(
              child: Text('Delete'),
              isDestructiveAction: true,
              trailingIcon: CupertinoIcons.delete,
              onPressed: (){
                print('action executed');
                Navigator.pop(context);
              },
              )
          ],
          child: GridTile(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(flex: 8, child: Image.asset('assets/${id[index].image}', fit: BoxFit.contain,)),
                Expanded(flex: 1, child: Text(id[index].name, style: TextStyle(fontSize: 18.0, color: Colors.black54, fontWeight: FontWeight.w700))),
                  SizedBox(height: 5),
                Expanded(
                  flex: 1,
                  child: Text(id[index].price, style: TextStyle(
                      fontSize: 20.0,fontWeight: FontWeight.w600,
                       color: Colors.green.shade900),),
                ),
              ],
            ),
            ///footer of items
            footer:TextButton(
                    onPressed:(){}, 
                    child: Text('Add to Cart',
                     style: TextStyle(
                       height: double.infinity,
                       color: Colors.black26,
                       backgroundColor: Colors.red.shade400,
                       fontWeight: FontWeight.w400,
                       fontSize: 14),)),
          ),
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
  Products(image: 'egypt.png',name: 'Egyptian crusade ', price: '1300'),
  Products(image: 'eligant.png',name: 'Eligant givanchy',price: '1455'),
  Products(image: 'jackets.png',name: 'Thic jacket',price: '300'),
  Products(image: 'jackets.png',name: 'Lether jacket',price: '3400'),
  Products(image: 'jw1.png',name: 'juwerey platinuim',price: '300'),
  Products(image: 'mini-skirt.png',name: 'mini skirt flare',price: '3200'),
  Products(image: 'office-mini.png',name: 'office mini skirt',price: '300'),
  Products(image: 'party-time.png',name: 'party wear',price: '300'),
  Products(image: 'pharoh.png',name: 'pharo makeover',price: '300'),
  Products(image: 'playstation-3.png',name: 'play station 3',price: '300'),
  Products(image: 'sneakers.png',name: 'ladies sneakers',price: '300'),
  Products(image: 'dexktop.png',name: 'desktop computer',price: '300'),
  Products(image: 'timberland.png',name: 'office footwear',price: '2000'),
  Products(image: 'kit.png',name: 'makeupkit',price: '1222'),
  Products(image: 'sneakers.png',name: 'fire image',price: '6333'),
  ];

class Products {
  String image; //location url for api endpoint
  String name;//location name for ui
  String price;//url for assets flag icon

  Products({ required this.image, required this.name, required this.price});
  }



 









  