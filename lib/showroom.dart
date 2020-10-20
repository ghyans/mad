import 'package:flutter/material.dart';
import 'package:car_rental/constants.dart';
import 'package:car_rental/data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:car_rental/car_widget.dart';
import 'package:car_rental/dealer_widget.dart';
import 'package:car_rental/available_cars.dart';
import 'package:car_rental/book_car.dart';

class Showroom extends StatefulWidget {
  @override
  _ShowroomState createState() => _ShowroomState();

}

class _ShowroomState extends State<Showroom> {
  List<NavigationItem> navigationItems = getNavigationItemList();
  NavigationItem selectedItem;

  List<Car> cars = getCarList();
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
      backgroundColor: Colors.white,


      body: Container(
        padding: MediaQuery.of(context).viewPadding,
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [



            Expanded(

              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                              "  The Four Wheel Mania",
                              style: GoogleFonts.raleway(
                                fontSize: 19,

                                color: Colors.black,
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
                                  color: Colors.black,
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AvailableCars()),
                          );
                        },

                        child: Padding(
                          padding: EdgeInsets.only(top: 16, right: 16, left: 16),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,

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
                              "  The Four Wheel Mania",
                              style: GoogleFonts.raleway(
                                fontSize: 19,

                                color: Colors.black,
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
                                  color: Colors.black,
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AvailableCars()),
                          );
                        },

                        child: Padding(
                          padding: EdgeInsets.only(top: 16, right: 16, left: 16),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,

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
                              " Top Brands",
                              style: GoogleFonts.raleway(
                                fontSize: 19,

                                color: Colors.black,
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
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 155,
                        margin: EdgeInsets.only(bottom: 16),
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
          child: buildCar(cars[i], i)
        )
      );
    }
    return list;
  }

  List<Widget> buildDealers(){
    List<Widget> list = [];
    for (var i = 0; i < dealers.length; i++) {
      list.add(buildDealer(dealers[i], i));
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