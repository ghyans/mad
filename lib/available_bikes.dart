import 'package:car_rental/car_widget.dart';
import 'package:car_rental/bike_widget.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/constants.dart';
import 'package:car_rental/data.dart';
import 'package:car_rental/book_car.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:car_rental/book_bike.dart';

class AvailableBikes extends StatefulWidget {
  @override
  _AvailableBikesState createState() => _AvailableBikesState();
}

class _AvailableBikesState extends State<AvailableBikes> {

  List<Filter> filters = getFilterList();
  Filter selectedFilter;

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedFilter = filters[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.black,
                      size: 28,
                    )
                ),
              ),

              SizedBox(
                height: 0,
              ),



              SizedBox(
                height: 10,
              ),

              Expanded(
                child: GridView.count(
                  physics: BouncingScrollPhysics(),
                  childAspectRatio: 1 / 1.31,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: getBikeList().map((item) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BookBike(bike: item)),
                          );
                        },
                        child: buildBike(item, null)
                    );
                  }).toList(),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }



}