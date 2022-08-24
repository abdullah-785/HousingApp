import 'package:flutter/material.dart';
import 'package:housesales/widgets/price_address.dart';
import '../detailPageWedgit/boxWithText.dart';
import '../detailPageWedgit/det_header_icons_.dart';
import '../detailPageWedgit/detail_text_of_houses.dart';



class DetailPage extends StatelessWidget {
  const DetailPage({ Key? key, required this.squareFoot, required this.bedroomsvar, required this.bathroomsvar, required this.garegevar, required this.propertyType, required this.amount, required this.description, required this.address, required this.createdAt,  }) : super(key: key);
  
  // final Image postImageUrl;
  final String squareFoot;
  final String bedroomsvar;
  final String bathroomsvar;
  final String garegevar;
  final String propertyType;
  final String amount;
  final String description;
  final String address;
  final String createdAt;
  
  
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // Image(
                //   width: MediaQuery.of(context).size.width,
                //   image: AssetImage("${img}"),
                // ),
                DetHeaderIcons(),
              ],
            ),
             Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child:
                  PriceAddress(price: amount, address: address),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 120.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    createdAt,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  )),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 12.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "House Information",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  )),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children:  [
                      DetBoxWithText(
                        info: squareFoot,
                      ),
                      const TitleOfBoxWithText(
                        title: "Square Foot",
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      DetBoxWithText(
                        info: bedroomsvar,
                      ),
                      const TitleOfBoxWithText(
                        title: "Bedrooms",
                      ),
                    ],
                  ),
                  Column(
                    children:  [
                      DetBoxWithText(
                        info: bathroomsvar,
                      ),
                      const TitleOfBoxWithText(
                        title: "bathrooms",
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      DetBoxWithText(
                        info: garegevar,
                      ),
                      const TitleOfBoxWithText(
                        title: "Garege",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            DetialText(description: description),
            
            // FloatingActionButton(onPressed: (){},)
          ],
        ),
      )),
    );
  }
}