import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  //const CategoryCard({super.key});
  final Color color;
  final String titleCard;
  const CategoryCard({super.key, required this.color,required this.titleCard});
  @override
  Widget build(BuildContext context) {
    return  InkWell(
        onTap: (){
          print(titleCard);
        },
        child : Container(
        padding: EdgeInsets.all(3),
        width: 200,
        height: 200,
        child:  Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: color,
          child : Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  titleCard,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    fontFamily: 'Rajdhani'
                  ),
                ),
                const SizedBox(height: 10,),
                const Text(
                  '0 of 10 done',
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
        )
    );
  }
}