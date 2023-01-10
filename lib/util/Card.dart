import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(3),
      width: 200,
      height: 200,
      child:  Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.blueAccent,
          child : Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Collage',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    fontFamily: 'Rajdhani'
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'This is Description of Category',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    fontFamily: 'Rajdhani'
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}