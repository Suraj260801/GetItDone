import 'package:flutter/material.dart';
import 'package:getitdone/util/Card.dart';
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

      body:
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
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    width: 200,
                    height: 50,
                    child:  const Card(
                      elevation: 0,
                      color: Colors.purple,
                      child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size:30,
                          )
                      ),

                    ),
                  ),
                  for(int i=0;i<3;++i)
                  Row(
                    children: [
                      for(int j=0;j<2;++j)
                      Flexible(child: CategoryCard()),
                    ],
                  )
              ]
              ),
            )

          ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_outlined),
            label: 'ToDo',
          ),
        ],
        selectedItemColor: Colors.blueAccent,

      ),
    );
  }
}
