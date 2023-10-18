import 'package:flutter/material.dart';
import 'package:doctor_app/category_card.dart';
import 'package:doctor_app/doctor_card.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[100],
      
      body: SafeArea(
     
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 
                 children: [
                  
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                         ),
                       Text('Menuka',
                       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                         ),
                   ],
                  ),

                 ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('lib/images/profile.jpg',
                    width: 40,
                    height: 40,
                    ),
                  )
          ],
          ),
        ),

        SizedBox(height: 10),


        // card how do you feel?

        Padding(
        
        padding: const EdgeInsets.symmetric(horizontal: 15.0),

        child:Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color: Color.fromARGB(255, 204, 177, 255),
          borderRadius: BorderRadius.circular(12)),

          child: Row(children: [
            // animation or cute picture
            Container(
              height: 80,
              width: 80,
              child: Lottie.network(
                'https://assets6.lottiefiles.com/private_files/lf30_nsj5jdla.json'),
            ),

            SizedBox(width: 15),
            
            Expanded(
               child:Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               
               children: [

                Text('How do you feel?',
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 14,
                ),),

                SizedBox(height: 12),

                Text('Fill out your medical card right now',
                 style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300
                ),),

                SizedBox(height: 14),

                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                
                    child: Center(
                      child: Text('Get Stated',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  )
               ],
            ),

          )

          ]),
           
        ),

        ),

       SizedBox(height: 20),

       // search bar

       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
        child: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 202, 202, 202),
            borderRadius: BorderRadius.circular(12),
          ),

          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              hintText: 'How can we help you?',
            ),
          ),
        ),
        ),


    SizedBox(height: 20),

  // side srcoll 
    Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryCard(iconImage: 'lib/icons/tooth.png', categoryName: 'Dentist'),
           CategoryCard(iconImage: 'lib/icons/surgeon.png', categoryName: 'Surgeon'),
            CategoryCard(iconImage: 'lib/icons/drugs.png', categoryName: 'Pharmacist')
        ],
      ),
    ),

   SizedBox(height: 25),

   // doctor list
    
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Doctor list',
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 16,
           ),),

          Text(
            'See all',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          )
        ],
      ),
    ),

    SizedBox(height: 25),

      
      Expanded(
        child: ListView(
            
            scrollDirection: Axis.horizontal,
            children: [
              DoctorCard(doctorImage: 'lib/images/doctor1.jpg', rating: '4.9', doctorName: 'Dr. Ganesh Gupta', doctorProfesstion: 'Therapist'),
               DoctorCard(doctorImage: 'lib/images/doctor2.jpg', rating: '2.3', doctorName: 'Dr. luwis wiki', doctorProfesstion: 'Psychologist'),
                DoctorCard(doctorImage: 'lib/images/doctor3.jpg', rating: '4.9', doctorName: 'Dr. Koslm jewil', doctorProfesstion: 'Surgeon')
            ],
        ))
          ],
        ),
      ),
    
    );


        
  }
}