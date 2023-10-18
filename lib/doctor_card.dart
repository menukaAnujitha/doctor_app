import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  
  final String doctorImage;
  final String rating;
  final String doctorName;
  final String doctorProfesstion;

  DoctorCard({
    required this.doctorImage,
    required this.rating,
    required this.doctorName,
    required this.doctorProfesstion

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
       child: Container(
        padding: const EdgeInsets.all(15),
        
        decoration: BoxDecoration(
           
           color: Color.fromARGB(255, 202, 202, 202),
           borderRadius: BorderRadius.circular(12),
          
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  doctorImage,
                  width: 60,
                  
                  ),
            ),

            SizedBox(
              height: 10,
            ),


            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 15.0,
                  color: Color.fromARGB(255, 41, 41, 41),
                  
                ),
                Text(
                  rating,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 8),
                ),
              ],),

              SizedBox(
                height: 10,
              ),

              Text(
                doctorName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),

              Text(doctorProfesstion+ '7 years', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10)),
          ]),
        ),
       );
  }
}