import 'package:flutter/material.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 600,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(
                "assets/images/PHOTO 1.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
