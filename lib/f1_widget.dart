import 'package:flutter/material.dart';
import 'package:car_rental/data.dart';
import 'package:car_rental/constants.dart';

Widget buildF1(F1 f1, int index){
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
        Radius.circular(15),
      ),
    ),
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.only(right: index != null ? 16 : 0, left: index == 0 ? 16 : 0),
    width: 220,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        Align(
          alignment: Alignment.centerRight,
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),

            ),
          ),
        ),

        SizedBox(
          height: 8,
        ),

        Container(
          height: 120,
          child: Center(
            child: Container(
              child: Image.asset(
                f1.images[0],
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),

        SizedBox(
          height: 24,
        ),

        Text(
          f1.team,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),

        SizedBox(
          height: 8,
        ),




      ],
    ),
  );
}