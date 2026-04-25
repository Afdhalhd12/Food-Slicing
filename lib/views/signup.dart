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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 500,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/orang_buang.png") )
            ),
          ),
          SizedBox(height: 30,),
          Center(
              child: Text(
                "Register",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
          
          
          Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
              color: fromCssColor("#FBFBFB"),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  SizedBox(height: 20),
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

                  SizedBox(height: 20),
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
                  Spacer(),
                  CustomButton(textButton: "Sign Up", onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
