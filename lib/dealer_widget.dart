import 'package:flutter/material.dart';
import 'package:car_rental/data.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildDealer(Dealer dealer, int index){
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end:
        Alignment(0.8, 5), // 10% of the width, so there are ten blinds.
        colors: [
          const Color(0xfffee000),
          const Color(0xffee0000)
        ], // red to yellow
        tileMode: TileMode.repeated, // repeats the gradient over the canvas
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.only(right: 16, left: index == 0 ? 16 : 0),
    width: 135,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[

        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(dealer.image), 
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          height: 80,
          width: 80,
        ),

        SizedBox(
          height: 10,
        ),

        Text(
          dealer.name,
          style: GoogleFonts.raleway(
            fontSize: 18,

            height: 1,
            color: Colors.white,
          ),
        ),

        Text(
          dealer.offers.toString() + " teams",
          style: GoogleFonts.raleway(
            fontSize: 12,
            color: Colors.white,
          ),
        ),

      ],
    ),
  );
}