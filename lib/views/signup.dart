import 'package:flutter/material.dart';
import 'package:food/views/login.dart';
import 'package:food/widgets/button.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 30, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/orang_buang.png"),
                    
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Text(
                "Register",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            SizedBox(height: 30,),
            Column(
              children: [
                Form(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ), 
                ),
            SizedBox(height: 20,),
                Form(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      suffix: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),

            SizedBox(height: 20,),
                Form(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      suffix: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            CustomButton(textButton: "Sign up", onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            }),
          ],
        ),
      ),
    );
  }
}
