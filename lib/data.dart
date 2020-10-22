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
class F1{
  String team;

  List<String> images;
  String drivers;
  String weight;
  String engine;
  String hp;
  String ranking;



  F1(this.team,this.images,this.drivers,this.weight,this.engine,this.hp,this.ranking);
}
List<F1> getF1List() {
  return <F1>[
    F1(
    "Mercedes Petronas AMG",
      [
        "assets/images/merc.png",

      ],
      "Lewis Hamilton | Valteri Bottas",
      "746 KG",
      "1.6L V6 Turbo",
      "950",
      "#1",
    ),
    F1(
        "RedBull Racing",
        [
          "assets/images/redbull.png",

        ],
        "Max Verstappen | Alex Albon",
        "743 KG",
        "1.6L V6 Turbo",
        "950",
        "#2",
    ),
    F1(
        "Racing Point",
        [
          "assets/images/racingpoint.png",

        ],
        "Sergio Perez | Lance Stroll",
        "743 KG",
        "1.6L V6 Turbo",
        "950",
        "#3",
    ),
    F1(
        "McLaren",
        [
          "assets/images/mclaren.png",

        ],
        "Carlos Sainz | Lando Norris",
        "733",
        "1.6L V6 Turbo",
        "950",
        "#4",
    ),
    F1(
        "Renault",
        [
          "assets/images/renault.png",

        ],
        "Daniel Ricciardo | Nico Hulkenberg",
        "740 KG",
        "1.6L V6 Turbo",
        "800",
        "#5",
    ),

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
      "Triumph",
      "Street Triple",
      "13000",
      "3.2",
      [
        "assets/images/triumphsth.png",

      ],
      "4",
      "Available",
      "2",
      "270",
      "Sport",
    ),
    Bike(
      "Kawasaki",
      "Ninja",
      "12000",
      "3.5",
      [
        "assets/images/ninja.png",
      ],
      "2",
      "Available",
      "2",
      "260",
      "Sports Tourer",
    ),
    Bike(
      "Harley Davidson",
      "Fatbob",
      "17000",
      "4.3",
      [
        "assets/images/fatbob.png",

      ],
      "4",
      "Not Available",
      "2",
      "240",
      "Cruiser",
    ),
    Bike(
      "KTM",
      "Duke",
      "7300",
      "4.5",
      [
        "assets/images/duke.png",
        "assets/images/duke1.png",

      ],
      "4",
      "Not Available",
      "2",
      "220",
      "Sport",
    ),
    Bike(
      "Royal Enfield",
      "Bullet",
      "5200",
      "4.9",
      [
        "assets/images/bullet.png",

      ],
      "6",
      "Not Available",
      "2",
      "200",
      "Tourer",
    ),
    Bike(
      "Royal Enfield",
      "Himalayan",
      "3500",
      "5.3",
      [
        "assets/images/himalayan.png",

      ],
      "4",
      "Not Available",
      "2",
      "200",
      "Tourer",
    ),
    Bike(
      "Suzuki",
      "Hayabusa",
      "7000",
      "4.7",
      [
        "assets/images/hayabusa.png",

      ],
      "4",
      "Available",
      "2",
      "220",
      "Cruiser",
    ),
    Bike(
      "BMW",
      "S1000RR",
      "17000",
      "3.5",
      [
        "assets/images/s1000rr.png",
        "assets/images/s1000rr1.png",
      ],
      "5",
      "Available",
      "2",
      "270",
      "Sports Tourer",
    ),
    Bike(
      "Kawasaki",
      "Z2",
      "22000",
      "2.9",
      [
        "assets/images/h2.png",
        "assets/images/h21.png",
      ],
      "1",
      "Available",
      "2",
      "290",
      "Sport",
    ),
    Bike(
      "Honda",
      "CBR 1000RR",
      "9900",
      "3.6",
      [
        "assets/images/cbr.png",
      ],
      "4",
      "Available",
      "2",
      "280",
      "Sport",
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
      "Nascar",
      10,
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