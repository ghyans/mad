import 'package:flutter/material.dart';

class NavigationItem {

  IconData iconData;

  NavigationItem(this.iconData);

}

List<NavigationItem> getNavigationItemList(){
  return <NavigationItem>[
    NavigationItem(Icons.home),
    NavigationItem(Icons.calendar_today),
    NavigationItem(Icons.notifications),
    NavigationItem(Icons.person),
  ];
}

class Bike {

  String brand;
  String model;
  String price;
  String condition;
  List<String> images;
  String color;
  String gearbox;
  String seating;
  String topspeed;
  String biketype;

  Bike(this.brand, this.model, this.price, this.condition, this.images,this.color,this.gearbox,this.seating,this.topspeed,this.biketype);

}

List<Bike> getBikeList(){
  return <Bike>[
    Bike(
      "Land Rover",
      "Discovery",
      "100000",
      "5.4",
      [
        "assets/images/land_rover_0.png",
        "assets/images/land_rover_1.png",
        "assets/images/land_rover_2.png",
      ],
      "4",
      "Automatic",
      "7",
      "240",
      "SUV",
    ),
    Bike(
      "Alfa Romeo",
      "C4",
      "120000",
      "4x4",
      [
        "assets/images/alfa_romeo_c4_0.png",
      ],
      "4",
      "Automatic",
      "7",
      "240",
      "SUV",
    ),
    Bike(
      "Nissan",
      "GTR",
      "100000",
      "4x4",
      [
        "assets/images/nissan_gtr_0.png",
        "assets/images/nissan_gtr_1.png",
        "assets/images/nissan_gtr_2.png",
        "assets/images/nissan_gtr_3.png",
      ],
      "4",
      "Automatic",
      "7",
      "240",
      "SUV",
    ),
    Bike(
      "Acura",
      "MDX 2020",
      "100000",
      "4x4",
      [
        "assets/images/acura_0.png",
        "assets/images/acura_1.png",
        "assets/images/acura_2.png",
      ],
      "4",
      "Automatic",
      "7",
      "240",
      "SUV",
    ),
    Bike(
      "Chevrolet",
      "Camaro",
      "100000",
      "4x4",
      [
        "assets/images/camaro_0.png",
        "assets/images/camaro_1.png",
        "assets/images/camaro_2.png",
      ],
      "4",
      "Automatic",
      "7",
      "240",
      "SUV",
    ),
    Bike(
      "Ferrari",
      "Spider 488",
      "100000",
      "4x4",
      [
        "assets/images/ferrari_spider_488_0.png",
        "assets/images/ferrari_spider_488_1.png",
        "assets/images/ferrari_spider_488_2.png",
        "assets/images/ferrari_spider_488_3.png",
        "assets/images/ferrari_spider_488_4.png",
      ],
      "4",
      "Automatic",
      "7",
      "240",
      "SUV",
    ),
    Bike(
      "Ford",
      "Focus",
      "100000",
      "4x4",
      [
        "assets/images/ford_0.png",
        "assets/images/ford_1.png",
      ],
      "4",
      "Automatic",
      "7",
      "240",
      "SUV",
    ),
    Bike(
      "Fiat",
      "500x",
      "100000",
      "4x4",
      [
        "assets/images/fiat_0.png",
        "assets/images/fiat_1.png",
      ],
      "4",
      "Automatic",
      "7",
      "240",
      "SUV",
    ),
    Bike(
      "Honda",
      "Civic",
      "100000",
      "4x4",
      [
        "assets/images/honda_0.png",
      ],
      "4",
      "Automatic",
      "7",
      "240",
      "SUV",
    ),
    Bike(
      "Citroen",
      "Picasso",
      "100000",
      "4x4",
      [
        "assets/images/citroen_0.png",
        "assets/images/citroen_1.png",
        "assets/images/citroen_2.png",
      ],
      "4",
      "Automatic",
      "7",
      "240",
      "SUV",
    ),
  ];
}

class Car {

  String brand;
  String model;
  String price;
  String condition;
  List<String> images;
  String color;
  String gearbox;
  String seating;
  String topspeed;
  String cartype;

  Car(this.brand, this.model, this.price, this.condition, this.images,this.color,this.gearbox,this.seating,this.topspeed,this.cartype);

}

List<Car> getCarList(){
  return <Car>[
    Car(
      "Land Rover",
      "Discovery",
      "100000",
      "5.4",
      [
        "assets/images/land_rover_0.png",
        "assets/images/land_rover_1.png",
        "assets/images/land_rover_2.png",
      ],
      "4",
      "Automatic",
      "7",
      "240",
      "SUV",
    ),
    Car(
      "Alfa Romeo",
      "C4",
      "120000",
      "4.2",
      [
        "assets/images/alfa_romeo_c4_0.png",
      ],
      "5",
      "Automatic",
      "5",
      "250",
      "Sedan",
    ),
    Car(
      "Nissan",
      "GTR",
      "90000",
      "5.1",
      [
        "assets/images/nissan_gtr_0.png",
        "assets/images/nissan_gtr_1.png",
        "assets/images/nissan_gtr_2.png",
        "assets/images/nissan_gtr_3.png",
      ],
      "5",
      "Automatic",
      "4",
      "220",
      "Sedan",
    ),
    Car(
      "Acura",
      "MDX 2020",
      "85000",
      "6.1",
      [
        "assets/images/acura_0.png",
        "assets/images/acura_1.png",
        "assets/images/acura_2.png",
      ],
      "4",
      "Automatic",
      "5",
      "200",
      "SUV",
    ),
    Car(
      "Chevrolet",
      "Camaro",
      "89000",
      "5.1",
      [
        "assets/images/camaro_0.png",
        "assets/images/camaro_1.png",
        "assets/images/camaro_2.png",
      ],
      "6",
      "Automatic",
      "4",
      "230",
      "Sedan",
    ),
    Car(
      "Ferrari",
      "Spider 488",
      "320000",
      "3.2",
      [
        "assets/images/ferrari_spider_488_0.png",
        "assets/images/ferrari_spider_488_1.png",
        "assets/images/ferrari_spider_488_2.png",
        "assets/images/ferrari_spider_488_3.png",
        "assets/images/ferrari_spider_488_4.png",
      ],
      "12",
      "Automatic",
      "2",
      "270",
      "Sedan",
    ),
    Car(
      "Ford",
      "Focus",
      "50000",
      "7.1",
      [
        "assets/images/ford_0.png",
        "assets/images/ford_1.png",
      ],
      "6",
      "Automatic",
      "4",
      "180",
      "Hatchback",
    ),
    Car(
      "Fiat",
      "500x",
      "25000",
      "9.1",
      [
        "assets/images/fiat_0.png",
        "assets/images/fiat_1.png",
      ],
      "7",
      "Automatic",
      "4",
      "175",
      "Hatchback",
    ),
    Car(
      "Honda",
      "Civic",
      "42000",
      "6.7",
      [
        "assets/images/honda_0.png",
      ],
      "4",
      "Automatic",
      "5",
      "200",
      "Sedan",
    ),
    Car(
      "Citroen",
      "Picasso",
      "10000",
      "8.9",
      [
        "assets/images/citroen_0.png",
        "assets/images/citroen_1.png",
        "assets/images/citroen_2.png",
      ],
      "4",
      "Automatic",
      "4",
      "165",
      "Hatchback",
    ),
  ];
}

class Dealer {

  String name;
  int offers;
  String image;


  Dealer(this.name, this.offers, this.image);

}

List<Dealer> getDealerList(){
  return <Dealer>[
    Dealer(
      "Formula 1",
      10,
      "assets/images/f1logo.jpg",
    ),
    Dealer(
      "Moto GP",
      10,
      "assets/images/motogplogo.png",
    ),
    Dealer(
      "Nascar", 10,
      "assets/images/nascarlogo.png",
    ),
  ];
}

class Filter {

  String name;

  Filter(this.name);

}

List<Filter> getFilterList(){
  return <Filter>[
    Filter("Best Match"),
    Filter("Highest Price"),
    Filter("Lowest Price"),
  ];
}