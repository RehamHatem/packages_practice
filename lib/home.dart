import 'package:flutter/material.dart';

import 'home tap.dart';

class Home extends StatefulWidget {
  static const String routName = "home";

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Image(
            image: AssetImage(
              "assets/images/splash.png",
            ),
            width: 100,
            height: 50),
        iconTheme: IconThemeData(color: Colors.black),

       actions: [
         Padding(
           padding: const EdgeInsets.all(16.0),
           child: Image(image: AssetImage("assets/images/c.png"),)
         ),

       ],

      ),
      body:tap[0] ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.white,
        child: Icon(Icons.add_shopping_cart_outlined,color: Colors.black),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      // bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
      //   color:Colors.redAccent,
      //   shape: CircularNotchedRectangle(), //shape of notch
      //   notchMargin: 10, //notche margin between floating button and bottom appbar
      //   child: Row( //children inside bottom appbar
      //
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: <Widget>[
      //       IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed: () {},),
      //       IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: () {},),
      //       IconButton(icon: Icon(Icons.print, color: Colors.white,), onPressed: () {},),
      //       IconButton(icon: Icon(Icons.people, color: Colors.white,), onPressed: () {},),
      //       IconButton(icon: Icon(Icons.people, color: Colors.white,), onPressed: () {},),
      //     ],
      //   ),
      // ),



      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
          shape: CircularNotchedRectangle(),
          notchMargin: 8,
        height: 100,
        padding: EdgeInsets.all(12),

        child: BottomNavigationBar(
         backgroundColor: Colors.transparent,
          elevation: 0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          currentIndex: index,
          onTap: (value) {
            value=index;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),label: "Home",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),label: "Wish list",
            ),BottomNavigationBarItem(
              icon: Icon(Icons.search),label: "Search",
            ),BottomNavigationBarItem(
              icon: Icon(Icons.settings),label: "Settings",
            )


          ],
        ),
      ),
    );
  }
  List<Widget>tap=[
    Tap(),
  ];
}
