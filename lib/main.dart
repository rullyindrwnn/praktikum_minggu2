import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StudentCard(),
    );
  }
}


class StudentCard extends StatelessWidget {
  const StudentCard({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xffE9EEF3),

      body: Center(

        child: Container(

          width: 360,

          padding: const EdgeInsets.all(20),

          decoration: BoxDecoration(

            color: Colors.white,

            borderRadius: BorderRadius.circular(18),

            boxShadow: [

              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 15,
                offset: const Offset(0, 8),
              )

            ],

          ),


          child: Column(

            mainAxisSize: MainAxisSize.min,

            children: [


              // Header Card
              Container(

                width: double.infinity,

                padding: const EdgeInsets.all(18),

                decoration: const BoxDecoration(

                  color: Color(0xff102A43),

                  borderRadius: BorderRadius.only(

                    topLeft: Radius.circular(15),

                    topRight: Radius.circular(15),

                  ),

                ),


                child: Column(

                  children: const [

                    Text(

                      "STUDENT PROFILE CARD",

                      style: TextStyle(

                        color: Colors.white,

                        fontSize: 18,

                        fontWeight: FontWeight.bold,

                        letterSpacing: 1,

                      ),

                    ),


                    SizedBox(height: 5),


                    Text(

                      "INFORMATICS ENGINEERING",

                      style: TextStyle(

                        color: Color(0xffCBD5E1),

                        fontSize: 12,

                      ),

                    ),

                  ],

                ),

              ),



              const SizedBox(height: 25),



              // Foto Profil
              Container(

                width: 90,

                height: 90,

                decoration: BoxDecoration(

                  shape: BoxShape.circle,

                  color: Color(0xffD9E2EC),

                  border: Border.all(

                    color: Color(0xff102A43),

                    width: 3,

                  ),

                ),


                child: const Icon(

                  Icons.person,

                  size: 55,

                  color: Color(0xff102A43),

                ),

              ),



              const SizedBox(height: 18),



              const Text(

                "Rully Indrawan",

                style: TextStyle(

                  fontSize: 22,

                  fontWeight: FontWeight.bold,

                  color: Color(0xff102A43),

                ),

              ),



              const SizedBox(height: 8),



              const Text(

                "NPM : 2471150038",

                style: TextStyle(

                  color: Colors.grey,

                  fontSize: 15,

                ),

              ),


              const Text(

                "Sarjana Informatika",

                style: TextStyle(

                  color: Colors.grey,

                  fontSize: 15,

                ),

              ),



              const SizedBox(height: 20),



              const Divider(),



              const SizedBox(height: 10),



              Row(

                mainAxisAlignment: MainAxisAlignment.center,

                children: [


                  skillCard("Cyber Security"),


                  const SizedBox(width: 12),


                  skillCard("Data Analyst"),


                ],

              ),



              const SizedBox(height: 20),



              Container(

                padding: const EdgeInsets.symmetric(

                  horizontal: 25,

                  vertical: 8,

                ),


                decoration: BoxDecoration(

                  color: Color(0xff102A43),

                  borderRadius: BorderRadius.circular(20),

                ),


                child: const Text(

                  "MOBILE DEVELOPMENT",

                  style: TextStyle(

                    color: Colors.white,

                    fontWeight: FontWeight.bold,

                    fontSize: 12,

                  ),

                ),

              )


            ],

          ),

        ),

      ),

    );

  }



  static Widget skillCard(String text){

    return Container(

      padding: const EdgeInsets.symmetric(

        horizontal: 18,

        vertical: 8,

      ),


      decoration: BoxDecoration(

        color: const Color(0xffD9EAF7),

        borderRadius: BorderRadius.circular(20),

      ),


      child: Text(

        text,

        style: const TextStyle(

          color: Color(0xff102A43),

          fontWeight: FontWeight.bold,

        ),

      ),

    );

  }

}