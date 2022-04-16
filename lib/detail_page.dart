import 'package:flutter/material.dart';
import 'package:housesales/widgets/price_address.dart';
import 'detailPageWedgit/boxWithText.dart';
import 'detailPageWedgit/det_header_icons_.dart';
import 'detailPageWedgit/detail_text_of_houses.dart';



class DetailPage extends StatelessWidget {
  const DetailPage({ Key? key, required this.img, required this.price, required this.address,
   required this.timeAgo, required this.area, required this.bedrooms, required this.bathroom }) : super(key: key);
  
  
  final String img;
  final String price;
  final String address;
  final String timeAgo;
  final String area;
  final String bedrooms;
  final String bathroom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                width: MediaQuery.of(context).size.width,
                image: AssetImage(img),
              ),
              DetHeaderIcons(),
            ],
          ),
           Padding(
            padding: EdgeInsets.only(top: 16.0),
            child:
                PriceAddress(price: price, address: address),
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
                  timeAgo,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
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
                      info: area,
                    ),
                    TitleOfBoxWithText(
                      title: "Square Foot",
                    ),
                  ],
                ),
                Column(
                  children: [
                    DetBoxWithText(
                      info: bedrooms,
                    ),
                    TitleOfBoxWithText(
                      title: "Bedrooms",
                    ),
                  ],
                ),
                Column(
                  children:  [
                    DetBoxWithText(
                      info: bathroom,
                    ),
                    TitleOfBoxWithText(
                      title: "bathrooms",
                    ),
                  ],
                ),

                Column(
                  children: const [
                    DetBoxWithText(
                      info: "1",
                    ),
                    TitleOfBoxWithText(
                      title: "Garege",
                    ),
                  ],
                ),
              ],
            ),
          ),
          DetialText(),
          DetialText(),
          // FloatingActionButton(onPressed: (){},)
        ],
      ),
    ));
  }
}




















// class DetailPage extends StatefulWidget {
//   const DetailPage({Key? key, required this.img, required this.price, required this.address,
//   required this.timeAgo, required this.area, required this.bedrooms, required this.bathroom}) : super(key: key);

//   final String img;
//   final String price;
//   final String address;
//   final String timeAgo;
//   final String area;
//   final String bedrooms;
//   final String bathroom;

//   @override
//   State<DetailPage> createState() => _DetailPageState();
// }

// class _DetailPageState extends State<DetailPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Column(
//         children: [
//           Stack(
//             children: [
//               Image(
//                 width: MediaQuery.of(context).size.width,
//                 image: AssetImage("img"),
//               ),
//               DetHeaderIcons(),
//             ],
//           ),
//           const Padding(
//             padding: EdgeInsets.only(top: 16.0),
//             child:
//                 PriceAddress(price: "220,000", address: "Jension MI 49428, 5F"),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 16.0),
//             child: Align(
//               alignment: Alignment.topRight,
//               child: Container(
//                 width: 120.0,
//                 height: 40.0,
//                 decoration: BoxDecoration(
//                   color: Colors.grey[100],
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Center(
//                     child: Text(
//                   "20 Hours ago",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
//                 )),
//               ),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.only(left: 16.0, top: 12.0),
//             child: Align(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   "House Information",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
//                 )),
//           ),
//           const SizedBox(
//             height: 30.0,
//           ),
//           SingleChildScrollView(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: const [
//                     DetBoxWithText(
//                       info: "1416",
//                     ),
//                     TitleOfBoxWithText(
//                       title: "Square Foot",
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: const [
//                     DetBoxWithText(
//                       info: "5",
//                     ),
//                     TitleOfBoxWithText(
//                       title: "Bedrooms",
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: const [
//                     DetBoxWithText(
//                       info: "4",
//                     ),
//                     TitleOfBoxWithText(
//                       title: "bathrooms",
//                     ),
//                   ],
//                 ),

//                 Column(
//                   children: const [
//                     DetBoxWithText(
//                       info: "1",
//                     ),
//                     TitleOfBoxWithText(
//                       title: "Garege",
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           DetialText(),
//           DetialText(),
//           // FloatingActionButton(onPressed: (){},)
//         ],
//       ),
//     ));
//   }
// }
