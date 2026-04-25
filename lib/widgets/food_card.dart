import 'package:flutter/material.dart';
import 'package:food/views/detail_page.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(
                        255,
                        203,
                        201,
                        201,
                      ).withValues(alpha: 0.3),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
      
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://miro.medium.com/v2/resize:fit:1200/1*vA2xjKJebclIQrP3-Ho4eQ.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
      
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5,),
                              Text(
                                "Ice Cream Yummii!!",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
      
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade50, 
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  "Ice Cream",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: fromCssColor("#FA5D5D"),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Muthu Shop',
                                    style: GoogleFonts.poppins(
                                      color: fromCssColor("#4b5563"),
                                    ),
                                  ),
                                  SizedBox(width: 30,),
                                  Text(
                                    'Rp. 50.000',
                                    style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
    );
  }
}