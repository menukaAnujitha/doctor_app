import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  final iconImage;
  final String categoryName;

  CategoryCard({
    required this.iconImage,
    required this.categoryName
  });
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
         padding: EdgeInsets.all(15),
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 209, 185, 255),
         ),

        child: Row(
          children: [
            Image.asset(
              iconImage,
              height:20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(categoryName),
          ],
          ),
      ),
      
    );
  }
}