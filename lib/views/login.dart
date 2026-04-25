import 'package:flutter/material.dart';
import 'package:food/views/boarding_page.dart';
import 'package:food/views/signup.dart';
import 'package:food/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                width: 420,
                height: 420,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/orang_duduk.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Text(
                "Let's Start",
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
              ],
            ),
            Spacer(),
            CustomButton(textButton: "Login", onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Boardingpage()));
            }),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
            }, child: Text("Sign Up", style: GoogleFonts.poppins(
              color: Colors.grey
            ),))
          ],
        ),
      ),
    );
  }
}
