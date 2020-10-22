import 'package:flutter/material.dart';
import 'package:car_rental/constants.dart';
import 'package:car_rental/data.dart';
import 'package:google_fonts/google_fonts.dart';

class BookF1 extends StatefulWidget {

  final F1 f1;

  BookF1({@required this.f1});

  @override
  _BookF1State createState() => _BookF1State();
}

class _BookF1State extends State<BookF1> {

  int _currentImage = 0;

  List<Widget> buildPageIndicator(){
    List<Widget> list = [];
    for (var i = 0; i < widget.f1.images.length; i++) {
      list.add(buildIndicator(i == _currentImage));
    }
    return list;
  }

  Widget buildIndicator(bool isActive){
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 6),
      height: 8,
      width: isActive ? 20 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.black54 : Colors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    border: Border.all(
                                      color: Colors.grey[300],
                                      width: 1,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.keyboard_arrow_left,
                                    color: Colors.white,
                                    size: 28,
                                  )
                              ),
                            ),

                            Row(
                              children: [



                                SizedBox(
                                  width: 16,
                                ),



                              ],
                            ),

                          ],
                        ),
                      ),

                      SizedBox(
                        height: 16,
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          widget.f1.team,
                          style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      SizedBox(
                        height: 8,
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 19),

                      ),

                      Expanded(
                        child: Container(
                          child: PageView(
                            physics: BouncingScrollPhysics(),
                            onPageChanged: (int page){
                              setState(() {
                                _currentImage = page;
                              });
                            },
                            children: widget.f1.images.map((path) {
                              return Container(
                                padding: EdgeInsets.symmetric(horizontal: 16,),
                                child: Container(
                                  child: Image.asset(
                                    path,
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),

                      widget.f1.images.length > 1
                          ? Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: buildPageIndicator(),
                        ),
                      )
                          : Container(),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [



                            buildPricePerPeriod(
                              "6",
                              widget.f1.drivers,
                              false,
                            ),


                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Container(
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
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Text(
                        "                            SPECIFICATIONS",
                        style: GoogleFonts.raleway(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    Container(
                      height: 80,
                      padding: EdgeInsets.only(top: 8, left: 16,),
                      margin: EdgeInsets.only(bottom: 16),
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildSpecificationBike("Weight", widget.f1.weight,),
                          buildSpecificationBike("Gearbox", widget.f1.engine,),
                          buildSpecificationBike("Seat", widget.f1.hp,),

                        ],
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                SizedBox(
                  height: 4,
                ),

                Row(
                  children: [


                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Ranking",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),


                  ],
                ),

              ],
            ),
            Container(
              height: 50,
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
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    widget.f1.ranking,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPricePerPeriod(String months, String price, bool selected){
    return Expanded(
      child: Container(
        height: 110,

        padding: EdgeInsets.all(16),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              " Team Drivers",
              style: TextStyle(
                color: selected ? Colors.white : Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,

              ),
            ),

            Expanded(
              child: Container(),
            ),

            Text(
              price,
              style: TextStyle(
                color: selected ? Colors.white : Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),



          ],
        ),
      ),
    );
  }

  Widget buildSpecificationBike(String title, String data){
    return Container(
      width: 130,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16,),
      margin: EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),

          SizedBox(
            height: 8,
          ),

          Text(
            data,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }

}