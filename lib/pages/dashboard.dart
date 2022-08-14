import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'dart:io';






class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List ListItem = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"];
  String? valuechoose;

  List ListItem2 = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"];
  String? valuechoose2;

  List ListItem3 = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"];
  String? valuechoose3;

  UploadTask? task;
  File? file;

  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? basename(file!.path) : "No file Selected";

    return Scaffold(
      appBar: AppBar(
        title: "Welcome To Dashboard".text.xl3.make().centered(),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                HeightBox(15),
                GestureDetector(
                  onTap: (){
                    selectFile();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    image: DecorationImage(
                      image: file == null ? AssetImage("images/uploadImageVector.jpg")
                      : Image.file(file!).image,
                    fit: BoxFit.fill,
                    )
                    ),
                    
                
                  
                  ),
                ),
                HeightBox(25),
                // "Post Now".text.xl4.fontWeight(FontWeight.bold).color(Colors.green).make().centered()
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.square_foot),
                      label: Text("Square Foot"),
                      hintText: "1616",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
                HeightBox(15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        // width: 10,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 81, 208, 85),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            "Bedrooms"
                                .text
                                .minFontSize(22)
                                .color(Colors.white)
                                .fontWeight(FontWeight.bold)
                                .make(),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: DropdownButton(
                                dropdownColor: Color.fromARGB(255, 81, 208, 85),
                                icon: Icon(Icons.arrow_drop_down,
                                    color: Colors.white),
                                iconSize: 36,
                                isExpanded: true,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                                elevation: 10,
                                hint: "1".text.white.make(),
                                value: valuechoose,
                                underline: Container(
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1.0,
                                          style: BorderStyle.solid,
                                          color: Colors.grey),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5.0)),
                                    ),
                                  ),
                                ),
                                onChanged: (newValue) {
                                  // valuechoose = newValue
                                  setState(() {
                                    valuechoose = newValue as String?;
                                  });
                                },
                                items: ListItem.map((valueItem) {
                                  return DropdownMenuItem(
                                    value: valueItem,
                                    child: Text(valueItem),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      )),
                      WidthBox(10),
        
                      // Second Expanded
                      Expanded(
                          child: Container(
                        // width: 10,
                        height: 90,
                        decoration: BoxDecoration(
                         color: Color.fromARGB(255, 81, 208, 85),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            "Bathrooms"
                                .text
                                .minFontSize(22)
                                .color(Colors.white)
                                .fontWeight(FontWeight.bold)
                                .make(),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: DropdownButton(
                                dropdownColor: Color.fromARGB(255, 81, 208, 85),
                                icon: Icon(Icons.arrow_drop_down,
                                    color: Colors.white),
                                iconSize: 36,
                                isExpanded: true,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                                elevation: 10,
                                hint: "1".text.white.make(),
                                value: valuechoose2,
                                underline: Container(
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1.0,
                                          style: BorderStyle.solid,
                                          color: Colors.grey),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5.0)),
                                    ),
                                  ),
                                ),
                                onChanged: (newValue) {
                                  // valuechoose = newValue
                                  setState(() {
                                    valuechoose2 = newValue as String?;
                                  });
                                },
                                items: ListItem2.map((valueItem) {
                                  return DropdownMenuItem(
                                    value: valueItem,
                                    child: Text(valueItem),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      )),
        
                      WidthBox(10),
                      // Third Expanded
                      Expanded(
                          child: Container(
                        // width: 10,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 81, 208, 85),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            "Garege"
                                .text
                                .minFontSize(22)
                                .color(Colors.white)
                                .fontWeight(FontWeight.bold)
                                .make(),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: DropdownButton(
                                dropdownColor: Color.fromARGB(255, 81, 208, 85),
                                icon: Icon(Icons.arrow_drop_down,
                                    color: Colors.white),
                                iconSize: 36,
                                isExpanded: true,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                                elevation: 10,
                                hint: "1".text.white.make(),
                                value: valuechoose3,
                                underline: Container(
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1.0,
                                          style: BorderStyle.solid,
                                          color: Colors.grey),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5.0)),
                                    ),
                                  ),
                                ),
                                onChanged: (newValue) {
                                  // valuechoose = newValue
                                  setState(() {
                                    valuechoose3 = newValue as String?;
                                  });
                                },
                                items: ListItem3.map((valueItem) {
                                  return DropdownMenuItem(
                                    value: valueItem,
                                    child: Text(valueItem),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                ),

                HeightBox(15),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.price_check),
                      label: Text("Amount"),
                      hintText: "Enter Amount",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
                HeightBox(15),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: const InputDecoration(
                      // prefixIcon: Icon(Icons.price_check),
                      label: Text("Description"),
                      hintText: "Enter other details about your post",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
                HeightBox(25),

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      
                    ),
                    onPressed: (){
                      if(file == null){
                       Fluttertoast.showToast(msg: "Please Select an Image");
                       return;
                      }




                      // else{
                      //   print("Successfully done");
                      // }
                    // uploadFile();
                  }, 
                  child: "Post".text.xl2.fontWeight(FontWeight.bold).make(),
                  
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

    Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (result == null) return;
    final path = result.files.single.path!;

    setState(() => file = File(path));
  }


//   Future uploadFile() async{
//     if (file == null) return;

//     final fileName = basename(file!.path);
//     final destination = 'file/$fileName';

//     FirebaseApi.uploadFile(destination, file!);
//   }

}


