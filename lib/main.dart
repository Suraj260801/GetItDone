import 'package:flutter/material.dart';
import 'package:getitdone/util/Card.dart';
import 'package:getitdone/util/BottomNavBar.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  List<Widget> pages = [
    Container(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView (
          child :Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0,0,0,5),
                  child : const Text(
                      "Hi, Sachin",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Rajdhani'
                      )
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0,0,0,5),
                  child : const Text(
                      "this is your to do list",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Rajdhani'
                      )
                  ),
                ),/*
                  Container(
                    padding: EdgeInsets.all(3),
                    width: 200,
                    height: 50,
                    child: Buttonico
                    const Card(
                      elevation: 0,
                      color: Colors.indigoAccent,
                      child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size:30,
                          )
                      ),

                    ),
                  ),*/
                Row(
                  children: [
                    Flexible(child: CategoryCard(color: Colors.redAccent,title_card: "Collage",)),
                    Flexible(child: CategoryCard(color: Colors.blueAccent,title_card: "Work",))
                  ],
                ),
                Row(
                  children: [
                    Flexible(child: CategoryCard(color: Colors.pinkAccent,title_card: "Traveling")),
                    Flexible(child: CategoryCard(color: Colors.purpleAccent,title_card: "Other"))
                  ],
                )
              ]
          ),
        )

    ),
    Text("0"),
    Text("1")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon:const Icon(
            Icons.arrow_back_rounded,
            color: Colors.blueAccent,
            size: 35,
          ),
        ),
      /*  title: Text(
          'Get it Done',
          style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w600,
              fontFamily: 'Rajdhani'),
        ),*/
        centerTitle: true,
      ),

      body:IndexedStack(
        index: 0,
        children: pages,
      ),

      bottomNavigationBar: BottomBar()
    );
  }
}
