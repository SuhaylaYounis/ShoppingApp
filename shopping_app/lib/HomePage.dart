import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "ZARA",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          //actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
        ),
        endDrawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Suhayla Younis"),
                  accountEmail: Text("suhaylayounis999@gmail.com "),
                  currentAccountPicture:Icon(Icons.account_circle_rounded, color: Colors.white,size: 60,),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
              ),
              ListTile(
                title:Text( "Home Page", style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),

                ),
                leading:  Icon(Icons.home , color: Colors.black,size: 30,),
              ),
              ListTile(

                title:Text( "Favorites", style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                ),
                leading:  Icon(Icons.star , color: Colors.black,size: 30,),
              ),
              ListTile(

                title:Text( "Cart", style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                ),
                leading:  Icon(Icons.shopping_cart, color: Colors.black,size: 30,),
              ),
              ListTile(

                title:Text( "My account", style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                ),
                leading:  Icon(Icons.person, color: Colors.black,size: 30,),
              ),
              ListTile(

                title:Text( "Language", style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                ),
                leading:  Icon(Icons.language, color: Colors.black,size: 30,),
              ),
              ListTile(

                title:Text( "Help", style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                ),
                leading:  Icon(Icons.help, color: Colors.black,size: 30,),
              ),

            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 0),
              child: Image.asset(
                  "images/c8616168-535d-4fdb-97b6-e86f34e0a9a9.jpg"),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: CarouselSlider(
                items: [
                  Image.asset(
                      "images/5ec11345-71e8-4b7e-a5c9-b27cdf9ab6be.jpg"),
                  Image.asset(
                      "images/d685e878-b6d4-4944-bab5-8b4904e5da72.jpg"),
                  Image.asset(
                      "images/8b90eb50-8d9e-4eb3-88ff-d07cb855c281.jpg"),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  aspectRatio: 2.0,
                  initialPage: 2,
                  // autoPlayAnimationDuration: Duration(seconds: 2),
                  autoPlayInterval: Duration(seconds: 3),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                child: Text("The latest deals",
                    style: TextStyle(fontSize: 25, color: Colors.black))),
            Padding(
              padding:
                  EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
              child: Container(
                height: 100,
                width: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 4,
                      child: Container(
                        height: 200,
                        width: 200,
                        child: Image.asset("images/1.jpg"),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 4,
                      child: Container(
                        height: 200,
                        width: 200,
                        child: Image.asset("images/2.jpg"),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 4,
                      child: Container(
                        height: 200,
                        width: 200,
                        child: Image.asset("images/3.jpg"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                child: Text("Shop now",
                    style: TextStyle(fontSize: 25, color: Colors.black))),
            Padding(
              padding:
                  EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
              child: Container(
                height: 100,
                width: 300,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  scrollDirection: Axis.vertical,
                  children: [
                    Card(
                      child: Container(
                        height: 200,
                        width: 200,
                        child: Image.asset(
                            "images/29f65075-2b7c-440f-b189-cf0fed92191f.jpg"),
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 200,
                        width: 200,
                        child: Image.asset(
                            "images/7478e549-5350-47ca-82db-1be7eb588d58.jpg"),
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 200,
                        width: 200,
                        child: Image.asset(
                            "images/a460c7c7-e659-44e7-9e4b-f7b7faec0c57.jpg"),
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 200,
                        width: 200,
                        child: Image.asset(
                            "images/f2c0674c-43d5-4581-862c-18c7c68963b1.jpg"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
