import 'package:flutter/material.dart';
import 'package:food/views/resto_detail.dart';
import 'package:food/widgets/button.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class CartDetail extends StatelessWidget {
  const CartDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your cart is ready to go',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
            ),
            Text(
              '4 Menu',
              style: GoogleFonts.poppins(
                color: fromCssColor("#54A5DA"),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                Container(
                  height: 147,
                  width: 400,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Sent To",
                                  style: GoogleFonts.poppins(
                                    color: fromCssColor("#4b5563"),
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_outlined,
                                  size: 15,
                                  color: fromCssColor("#54A5DA"),
                                ),
                              ],
                            ),

                            SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/map.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "242nd St Tonganoxie, Kansas",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "(KS), 66086",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Your Order",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.add, size: 25, color: fromCssColor("#54A5DA")),
                  ],
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {},
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
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                shape: BoxShape.rectangle,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Padding(
                                padding: EdgeInsetsGeometry.all(3),
                                child: Text("1x"),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 70,
                              width: 70,
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
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text(
                                        "Ice Cream",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(width: 77),
                                      Text(
                                        "Rp.50.000",
                                        style: GoogleFonts.poppins(
                                          color: fromCssColor("#4b5563"),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Edit',
                                    style: GoogleFonts.poppins(
                                      color: fromCssColor("#54A5DA"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 430,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 450,
                  height: 90,
                  decoration: BoxDecoration(color: fromCssColor("#FAFAFA")),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Delivery Fee",
                                  style: GoogleFonts.poppins(
                                    color: fromCssColor("#4b5563"),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Rp. 4.000",
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total Cost",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Rp. 54.000",
                                  style: GoogleFonts.poppins(
                                    color: fromCssColor("#54A5DA")
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: CustomButton(textButton: "Pay", onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RestoDetail()));
            }),
          )
        ],
      ),
    );
  }
}
