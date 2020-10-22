import 'package:flutter/material.dart';
import 'package:car_rental/constants.dart';
import 'package:car_rental/data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:car_rental/car_widget.dart';
import 'package:car_rental/dealer_widget.dart';
import 'package:car_rental/available_cars.dart';
import 'package:car_rental/book_car.dart';
import 'package:car_rental/book_bike.dart';
import 'package:car_rental/bike_widget.dart';
import 'package:car_rental/f1_widget.dart';
import 'package:car_rental/book_f1.dart';
import 'package:car_rental/available_bikes.dart';
import 'package:car_rental/available_f1.dart';
import 'package:url_launcher/url_launcher.dart';

class Showroom extends StatefulWidget {
  @override
  _ShowroomState createState() => _ShowroomState();

}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

class _ShowroomState extends State<Showroom> {
  List<NavigationItem> navigationItems = getNavigationItemList();
  NavigationItem selectedItem;
  List<Bike> bikes = getBikeList();
  List<Car> cars = getCarList();
  List<F1> f1s = getF1List();
  List<Dealer> dealers = getDealerList();

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedItem = navigationItems[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,

        title:  Text(
          " The Auto World",
          style: GoogleFonts.raleway(
            fontSize:30,
            fontWeight: FontWeight.bold,
            color: Colors.red[800],



          ),
        ),
      ),

      body: Container(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [



            Expanded(

              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end:
                      Alignment(0.8, 5), // 10% of the width, so there are ten blinds.
                      colors: [
                        const Color(0xff000000),
                        const Color(0xff000000)
                      ], // red to yellow
                      tileMode: TileMode.repeated, // repeats the gradient over the canvas
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Column(
                    children: [

                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text(
                              "  Best of 4 wheels",
                              style: GoogleFonts.raleway(
                                fontSize: 19,

                                color: Colors.white,
                              ),
                            ),

                            Row(
                              children: [

                                Text(
                                  "",
                                  style: GoogleFonts.raleway(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: kPrimaryColor,
                                  ),
                                ),

                                SizedBox(
                                  width: 8,
                                ),

                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: Colors.white,
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),
                      Container(
                        height: 260,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: buildDeals(),
                        ),
                      ),

                      GestureDetector(

                        onTap: () {
                          const url = 'https://www.cardekho.com/upcomingcars';
                          launchURL(url);

                        },

                        child: Padding(
                          padding: EdgeInsets.only(top: 16, right: 16, left: 16),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end:
                                Alignment(0.8, 5), // 10% of the width, so there are ten blinds.
                                colors: [
                                  const Color(0xffe00000),
                                  const Color(0xff0000)
                                ], // red to yellow
                                tileMode: TileMode.repeated, // repeats the gradient over the canvas
                              ),

                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            padding: EdgeInsets.all(24),
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text(
                                      "New Launches",
                                      style: GoogleFonts.raleway(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),

                                    Text(
                                      "Handpicked for you",
                                      style: GoogleFonts.raleway(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),

                                  ],
                                ),


                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                  height: 40,
                                  width: 40,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text(
                              "  The Two Wheel Mania",
                              style: GoogleFonts.raleway(
                                fontSize: 19,

                                color: Colors.white,
                              ),
                            ),

                            Row(
                              children: [

                                Text(
                                  "",
                                  style: GoogleFonts.raleway(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: kPrimaryColor,
                                  ),
                                ),

                                SizedBox(
                                  width: 8,
                                ),

                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: Colors.white,
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),

                      Container(
                        height: 260,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: buildBikeDeals(),
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AvailableBikes()),
                          );
                        },

                        child: Padding(
                          padding: EdgeInsets.only(top: 16, right: 16, left: 16),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end:
                                Alignment(0.8, 5), // 10% of the width, so there are ten blinds.
                                colors: [
                                  const Color(0xffe00000),
                                  const Color(0xff0000)
                                ], // red to yellow
                                tileMode: TileMode.repeated, // repeats the gradient over the canvas
                              ),

                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            padding: EdgeInsets.all(24),
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text(
                                      "View All",
                                      style: GoogleFonts.raleway(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),

                                    Text(
                                      "For the 1 percent.",
                                      style: GoogleFonts.raleway(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),

                                  ],
                                ),


                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                  height: 40,
                                  width: 40,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),


                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text(
                              " World of Motorsports",
                              style: GoogleFonts.raleway(
                                fontSize: 19,

                                color: Colors.white,
                              ),
                            ),

                            Row(
                              children: [
                                SizedBox(
                                  width: 8,
                                ),

                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 160,
                        margin: EdgeInsets.only(bottom: 10),
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: buildDealers(),
                        ),

                      ),
                    ],
                  ),
                  ),
                ),
              ),
            ],
        ),
      ),

    );
  }

  List<Widget> buildDeals(){
    List<Widget> list = [];
    for (var i = 0; i < cars.length; i++) {
      list.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BookCar(car: cars[i])),
            );
          },
          child: buildCar(cars[i], i,)
        )
      );
    }
    return list;
  }

  List<Widget> buildBikeDeals(){
    List<Widget> list = [];
    for (var i = 0; i < bikes.length; i++) {
      list.add(
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookBike(bike: bikes[i])),
                );
              },
              child: buildBike(bikes[i], i)
          )
      );
    }
    return list;
  }
  List<Widget> buildF1Deals(){
    List<Widget> list = [];
    for (var i = 0; i < f1s.length; i++) {
      list.add(
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookF1(f1: f1s[i])),
                );
              },
              child: buildF1(f1s[i], i)
          )
      );
    }
    return list;
  }

  List<Widget> buildDealers(){
    List<Widget> list = [];
    for (var i = 0; i < dealers.length; i++) {
      list.add(buildDealer(dealers[i], i, context));
    }

    return list;
  }

  List<Widget> buildNavigationItems(){
    List<Widget> list = [];
    for (var navigationItem in navigationItems) {
      list.add(buildNavigationItem(navigationItem));
    }
    return list;
  }

  Widget buildNavigationItem(NavigationItem item){
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = item;
        });
      },

    );
  }

}