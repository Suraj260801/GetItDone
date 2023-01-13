import 'package:flutter/material.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(

      type: BottomNavigationBarType.fixed,

      selectedIconTheme: IconThemeData(
        color: Colors.deepPurple,
        size: 35
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.pink
      ),

      showSelectedLabels: false,
      showUnselectedLabels: false,


      currentIndex: _currentIndex,
      onTap: (value)  {
        setState((){
          _currentIndex = value;
          print(_currentIndex);
        });
      },
      items:  const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time_outlined),
          label: '',
        ),
      ],
    );
  }
}

