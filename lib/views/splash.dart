import 'package:flutter/material.dart';
import 'package:food/views/login.dart';
import 'package:food/widgets/button.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 600,
              height: 600,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/Illustration.png"),
                fit: BoxFit.cover)
              ),
            ),
          ),
          SizedBox(height: 50,),
          Center(
            child: Text('Craving Something Good?', style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
          ),
          Center(
            child: Text('We’ve Got You', style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.grey
            ),),
          ),
          Spacer(),
          CustomButton(textButton: "Start", onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
          }, bgColor: fromCssColor("#54A5DA"),)
        ],
      ),) ,
    );
  }
}