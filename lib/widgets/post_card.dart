import 'package:flutter/material.dart';
import 'package:housesales/models/userModel.dart';
import 'package:housesales/pages/detail_page.dart';
import 'package:velocity_x/velocity_x.dart';

class PostCard extends StatefulWidget {
  const PostCard({Key? key, this.snap}) : super(key: key);
  final snap;

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    UserModel usermodel = UserModel();
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    try{
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    //   img: Image.network(
                    //   widget.snap['postImageUrl'],
                    //   fit: BoxFit.cover,
                    // ), 
                    squareFoot: widget.snap['squareFoot'].toString(), 
                    bedroomsvar: widget.snap['bedroomsvar'].toString(), 
                    bathroomsvar: widget.snap['bathroomsvar'].toString(),
                    garegevar: widget.snap['garegevar'].toString(),
                    propertyType: widget.snap['propertyType'].toString(),
                    amount: widget.snap['amount'].toString(), 
                    description: widget.snap['description'].toString(),
                    address: widget.snap['address'].toString(), 
                    createdAt: widget.snap['createdAt'].toString(), 
                    
                    )));
                    }catch(error){
                      print(error);
                    }
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      widget.snap['postImageUrl'].toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "\$"+widget.snap['amount'].toString(),
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold),
                        ),
                        
                      ),
                      WidthBox(10),
                      Text(widget.snap['address'].toString(),
                      style: TextStyle(fontWeight: FontWeight.bold, 
                      color: Colors.grey
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(widget.snap['bedroomsvar'].toString() +" Bedrooms/ "+ widget.snap['bathroomsvar'].toString() +
                     " Bathrooms/ " + widget.snap['squareFoot'].toString() + "sqft", 
                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                     ),
                  ),
                ),
                HeightBox(30),
              ],
            ),
          )
        ],
      ),
    );
  }
}
