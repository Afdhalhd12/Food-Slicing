import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class RestoDetail extends StatelessWidget {
  const RestoDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 350,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/resto.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                      child: ClipRRect(
                        child: Container(
                          width: 350,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.location_pin,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "See location on map",
                                  style: GoogleFonts.poppins(fontSize: 14),
                                ),
                                Spacer(),
                                Icon(Icons.arrow_forward, size: 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              children: [
                Text(
                  'Angkringan Resto',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(Icons.star, color: Colors.yellow.shade800),
                Icon(Icons.star, color: Colors.yellow.shade800),
                Icon(Icons.star, color: Colors.grey),
              ],
            ),

            SizedBox(height: 5),
            Text(
              'Jawi, Pasuruan',
              style: GoogleFonts.poppins(
                color: fromCssColor("#4b5563"),
                fontWeight: FontWeight.w500,
              ),
            ),

            SizedBox(height: 20),
            Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.grey.shade100,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 5,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Check the reward in this resto",
                      style: GoogleFonts.poppins(),
                    ),
                    Row(children: [
                      Text(
                      "16 Reward",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: fromCssColor("#54A5DA")
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 15,)


                    ],),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
