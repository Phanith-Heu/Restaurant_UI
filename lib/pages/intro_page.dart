import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/components/button.dart';
import 'package:restaurant/theme/colors.dart';



class IntroPage extends StatelessWidget {
  const IntroPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 0),
      
              //shop name
              Text(
                "Sukiyabashi Jiro", 
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              
              //icon
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('lib/images/sushi2.png'),
              ),
        
              //title
              Text(
                "THE TASTE OF JAPANESE FOOD",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 44,//44
                  color: Colors.white,
                ),
              ),
        
              //subtitle
              Text(
                "Feel the taste of the most popular Japanese food from anywhere and anytime",
                style: TextStyle(
                  color: Colors.grey[300],
                  height: 1.5,
                ),
              ),
      
              const SizedBox(width: 25),
              // get started button
              MyButton(
                text: "Get Started",
                onTap: () {
                  //go to menu page
                  Navigator.pushNamed(context, '/menupage');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
 