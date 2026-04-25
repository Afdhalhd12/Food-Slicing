import 'package:flutter/material.dart';
import 'package:food/views/cart_detail.dart';
import 'package:food/widgets/button.dart';
import 'package:food/widgets/food_detail.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Angkringan Resto',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
            ),
            Text(
              'Go to restaurant',
              style: GoogleFonts.poppins(
                color: fromCssColor("#54A5DA"),
                fontSize: 14,
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Icon(Icons.shopping_cart_outlined, color: Colors.black),
              SizedBox(width: 5),
              Icon(Icons.favorite_outline, color: Colors.black),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 450,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10);
                  },
                  itemBuilder: (context, index) {
                    return FoodDetail();
                  },
                ),
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  Text(
                    'Yellow Ice Creamy',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.star, color: Colors.yellow.shade800),
                  Icon(Icons.star, color: Colors.yellow.shade800),
                  Icon(Icons.star, color: Colors.grey),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Rp. 50.000',
                style: GoogleFonts.poppins(
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Nibh faucibus pellentesque ac viverra maecenas ultricies in nisl, faucibus pellentesque ac viverra ecenas ultricies in nisl',
                style: GoogleFonts.poppins(color: fromCssColor("#4b5563")),
              ),
              SizedBox(height: 40),
              Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: fromCssColor("#F1F1F1"),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Leave a note for the restaurant",
                        style: GoogleFonts.poppins(
                          color: fromCssColor("#747474"),
                        ),
                      ),

                      
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              
              CustomButton(
                textButton: "Continue",
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CartDetail()));
                },
                bgColor: fromCssColor("#54A5DA"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
