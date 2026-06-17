import 'package:flutter/material.dart';
import 'package:food/widgets/card_category.dart';
import 'package:food/widgets/food_card.dart';
import 'package:food/widgets/restaurant.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class Boardingpage extends StatelessWidget {
  const Boardingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What do you want to',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              Text(
                'eat today?',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 175,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10);
                  },
                  itemBuilder: (context, index) {
                    return CardCategory();
                  },
                ),
              ),
              SizedBox(height: 20),

              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: fromCssColor("#FA5D5D"),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withValues(alpha: 0.3),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Icon(Icons.favorite, size: 25, color: Colors.white),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Popular",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "Let’s choose, and enjoy the food",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: fromCssColor("#4b5563"),
                      ),
                    ),
                  ],
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              SizedBox(height: 20),

              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 20);
                },
                itemBuilder: (context, index) {
                  return FoodCard();
                },
              ),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: fromCssColor("#54A5DA"),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightBlueAccent.withValues(alpha: 0.3),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.location_pin,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Popular",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "Let’s choose, and enjoy the food",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: fromCssColor("#4b5563"),
                      ),
                    ),
                  ],
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              SizedBox(height: 20),

              // ListView.separated(
              //   shrinkWrap: true,
              //   itemCount: 4,
              //   separatorBuilder: (context, index) {
              //     return SizedBox(height: 20);
              //   },
              //   itemBuilder: (context, index) {
              //     return Column(children: [Restaurant()]);
              //   },
              // ),

              // GridView.count(
              //   shrinkWrap: true,
              //   physics: NeverScrollableScrollPhysics(),
              //   crossAxisCount: 2,
              //   crossAxisSpacing: 2,
              //   children: List.generate(2, (index) {
              //     return Restaurant();
              //   }),
              // ),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: List.generate(4, (index) {
                  return Restaurant();
                }),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 30, vertical: 10),
        child: Container(
          height: 70,
          padding: EdgeInsets.all(5),
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
          child: ClipRRect(
            child: BottomNavigationBar(
              elevation: 0,
              iconSize: 25,
              backgroundColor: Colors.transparent,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: Colors.blue,
              type: BottomNavigationBarType.fixed,

              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                  icon: Icon(Icons.document_scanner),
                  label: "Detail",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "user",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
