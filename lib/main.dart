import 'dart:async';

import 'package:flutter/material.dart';
import 'package:getitdone/util/Card.dart';
import 'package:getitdone/util/BottomNavBar.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
            builder: (BuildContext context) => MyHomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Icon(Icons.ice_skating),
      ),
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
      ),

      body:Container(
          padding: const EdgeInsets.all(5),
          child:  Column(
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
                 AddButton(),
                  SizedBox(height: 10,),
                Expanded(
                    child: SingleChildScrollView(
                    child :Column(
                      children: [
                        Row(
                          children: const [
                            Flexible(child: CategoryCard(color: Colors.redAccent,titleCard: "Collage",)),
                            Flexible(child: CategoryCard(color: Colors.blueAccent,titleCard: "Work",))
                          ],
                        ),
                        Row(
                          children: const [
                            Flexible(child: CategoryCard(color: Colors.redAccent,titleCard: "Collage",)),
                            Flexible(child: CategoryCard(color: Colors.blueAccent,titleCard: "Work",))
                          ],
                        ),
                        Row(
                          children: const [
                            Flexible(child: CategoryCard(color: Colors.pinkAccent,titleCard: "Traveling")),
                            Flexible(child: CategoryCard(color: Colors.purpleAccent,titleCard: "Other"))
                          ],
                        ),


                      ],
                    )
                )
                ),
                /*  Expanded(child:  ListView.separated(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(title: Text("hello"));
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 8.0);
                    },
                  ))*/
                ],

            ),
          ),


      bottomNavigationBar: BottomBar(),

    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Opacity(
        opacity: 0.7,
        child: GestureDetector(
          onTap: (){
            print("hi");
          },
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage('assets/icons/add.png'),
                height: 60,
                width: 60,
              ),
              Text('Add Lists'),
            ],
        )
        )
    );
  }
}


