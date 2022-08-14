import 'package:flutter/material.dart';
import 'package:housesales/pages/detail_page.dart';
import 'package:housesales/widgets/buttonsCard.dart';
import 'package:housesales/widgets/city_name.dart';
import 'package:housesales/widgets/city_word.dart';
import 'package:housesales/widgets/header_icons.dart';
import 'package:housesales/widgets/home_details.dart';
import 'package:housesales/widgets/image_card.dart';
import 'package:housesales/widgets/price_address.dart';

import '../drawer/drawer_header.dart';
import '../drawer/drawer_list.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Housing App", style: TextStyle(
            // fontSize: 
            
          ),),
          backgroundColor: Colors.green,
          toolbarHeight: 60,
  
        ),
        
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children:  [
                //header icons
                // const HeaderIcons(),
                //City word
                const City(city: "City",),
                //City name
                const CityName(cityName: "Sialkot"),
                //divider
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
                  child: Divider(
                    color: Color.fromARGB(255, 179, 178, 178),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const DetailPage(
                      img: "images/image_1.jpg",
                      price: "\$200,000",
                      address: "Jension MI 49428, SF",
                      area: "1616",
                      bathroom: "4",
                      bedrooms: "2",
                      timeAgo: "19 hours ago",

                    ), ),);
                    
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 25.0),
                    child: ImageCard(img: "images/image_1.jpg",),
                  ),
                ),
                //price Address widget
                const PriceAddress(price: "\$200,000", address: "Jension MI 49428, SF",),
                //home Detials widget
                const HomeDetail(bathrooms: "4 bedrooms / ",
                bedrooms: "2 bathrooms / ",
                area: "1616 sqft",
                ),
                //image Card Widget
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const DetailPage(
                      img: "images/image_2.jpg",
                      price: "\$300,000",
                      address: "Jension MI 49428, SF",
                      area: "1716",
                      bathroom: "4",
                      bedrooms: "7",
                      timeAgo: "10 hours ago",

                    ), ),);
                    
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 30, ),
                    child: ImageCard(img: "images/image_2.jpg"),
                  ),
                ),
                //price and address
                const PriceAddress(price: "\$300,000", address: "Mension JJ 54398, PF"),
                //home Details widget
                const HomeDetail(bedrooms: "7 bedrooms / ", bathrooms: "4 bathrooms / ", area: "1716 sqft"),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const DetailPage(
                      img: "images/image_3.jpeg",
                      price: "\$150,000",
                      address: "Jension MI 49428, SF",
                      area: "1816",
                      bathroom: "2",
                      bedrooms: "4",
                      timeAgo: "1 hours ago",

                    ), ),);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 30, ),
                    child: ImageCard(img: "images/image_3.jpeg"),
                  ),
                ),
                //price and address
                const PriceAddress(price: "\$150,000", address: "Mension JJ 54398, PF"),
                //home Details widget
                const HomeDetail(bedrooms: "4 bedrooms / ", bathrooms: "2 bathrooms / ", area: "1816 sqft"),
                
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const DetailPage(
                      img: "images/image_4.jpg",
                      price: "\$400,000",
                      address: "Jension MI 49428, SF",
                      area: "2116",
                      bathroom: "5",
                      bedrooms: "9",
                      timeAgo: "21 hours ago",

                    ), ),);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 30, ),
                    child: ImageCard(img: "images/image_4.jpg"),
                  ),
                ),
                //price and address
                const PriceAddress(price: "\$400,000", address: "Mension JJ 54398, PF"),
                //home Details widget
                const HomeDetail(bedrooms: "9 bedrooms / ", bathrooms: "5 bathrooms / ", area: "2116 sqft"),
                

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const DetailPage(
                      img: "images/image_5.jpg",
                      price: "\$350,000",
                      address: "Jension MI 49428, SF",
                      area: "1916",
                      bathroom: "4",
                      bedrooms: "7",
                      timeAgo: "15 hours ago",

                    ), ),);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 30, ),
                    child: ImageCard(img: "images/image_5.jpg"),
                  ),
                ),
                //price and address
                const PriceAddress(price: "\$350,000", address: "Mension JJ 54398, PF"),
                //home Details widget
                const HomeDetail(bedrooms: "7 bedrooms / ", bathrooms: "4 bathrooms / ", area: "1916 sqft"),
                

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const DetailPage(
                      img: "images/image_6.jpg",
                      price: "\$700,000",
                      address: "Jension MI 49428, SF",
                      area: "2621", 
                      bathroom: "8",
                      bedrooms: "13",
                      timeAgo: "5 hours ago",

                    ), ),);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 30,),
                    child: ImageCard(img: "images/image_6.jpg"),
                  ),
                ),
                //price and address
                const PriceAddress(price: "700,000", address: "Mension JJ 54398, PF"),
                //home Details widget
                const HomeDetail(bedrooms: "13 bedrooms / ", bathrooms: "8 bathrooms / ", area: "2621 sqft"),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  MyHeaderDrawer(),
                  MyDrawerList()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class TopButtons extends StatelessWidget {
  const TopButtons({
    Key? key, required this.button1, required this.button2, required this.button3,
  }) : super(key: key);
  final String button1;
  final String button2;
  final String button3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          ButtonsCard(
            text: button1,
          ),
          ButtonsCard(
            text: button2,
          ),
          ButtonsCard(
            text: button3,
          ),
        ],
      ),
    );
  }
}
