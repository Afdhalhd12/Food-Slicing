import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardCategory extends StatelessWidget {
  final String category;
  final String item;
  final String image;
  const CardCategory({
    super.key,
    this.category = "Sweets - ",
    this.image = "assets/images/Donat.png",
    this.item = "12 Item"
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.shade300,
                image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            SizedBox(width: 5),
            Text(category, style: GoogleFonts.poppins()),
            Text(
              item,
              style: GoogleFonts.poppins(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ],
    );
  }
}
