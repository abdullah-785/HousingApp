import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:housesales/models/userModel.dart';
import 'package:housesales/pages/home_page.dart';
import 'package:housesales/pages/login_as.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // List ListItem = ['Login As Buyer', 'Login As Seller'];
  // String? valuechoose;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _phoneNumerController = TextEditingController();

  // UploadTask? task;
  File? file;
  String? imageUrl;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? basename(file!.path) : "No file Selected";

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 12.0),
                child: Row(
                  children: [
                    Card(
                        child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back,
                                  size: 30.0,
                                )))),
                    const SizedBox(
                      width: 30,
                    ),
                    // Text("Register Now", style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width,

                  // height: 20,
                  child: Card(
                    margin: EdgeInsets.only(top: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 12, right: 12, top: 30),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              "Register Now",
                              style: TextStyle(
                                  fontSize: 35.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: () {
                                selectFile();
                              },
                              child: CircleAvatar(
                                radius: 70,
                                backgroundImage: file == null
                                    ? AssetImage("images/uploadImageVector.jpg")
                                    : Image.file(file!).image,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _nameController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  label: Text("Name"),
                                  hintText: "Enter Your name",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            TextFormField(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  label: Text("Email"),
                                  hintText: "abc@gmail.com",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              keyboardType: TextInputType.emailAddress,
                              obscureText: true,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                label: Text("Password"),
                                hintText: "Enter Password",
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            TextFormField(
                              controller: _confirmPasswordController,
                              keyboardType: TextInputType.emailAddress,
                              obscureText: true,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                label: Text("Confirm Password"),
                                hintText: "Enter Confirm Password",
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            TextFormField(
                              controller: _phoneNumerController,
                              keyboardType: TextInputType.emailAddress,
                              // obscureText: true,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.phone),
                                label: Text("Phone"),
                                hintText: "Enter Phone Number",
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            // Padding(
                            //   padding:
                            //       const EdgeInsets.symmetric(horizontal: 16),
                            //   child: DropdownButton(
                            //     icon: Icon(Icons.arrow_drop_down),
                            //     iconSize: 36,
                            //     isExpanded: true,
                            //     style: const TextStyle(
                            //         color: Color.fromARGB(255, 122, 121, 121),
                            //         fontSize: 18,
                            //         fontWeight: FontWeight.bold),
                            //     elevation: 10,
                            //     hint: const Text("Select Type"),
                            //     value: valuechoose,
                            //     underline: Container(
                            //       decoration: const ShapeDecoration(
                            //         shape: RoundedRectangleBorder(
                            //           side: BorderSide(
                            //               width: 1.0,
                            //               style: BorderStyle.solid,
                            //               color: Colors.grey),
                            //           borderRadius: BorderRadius.all(
                            //               Radius.circular(5.0)),
                            //         ),
                            //       ),
                            //     ),
                            //     onChanged: (newValue) {
                            //       // valuechoose = newValue
                            //       setState(() {
                            //         valuechoose = newValue as String?;
                            //         // print(valuechoose);
                            //       });
                            //     },
                            //     items: ListItem.map((valueItem) {
                            //       return DropdownMenuItem(
                            //         value: valueItem,
                            //         child: Text(valueItem),
                            //       );
                            //     }).toList(),
                            //   ),
                            // ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 45.0,
                                child: ElevatedButton(
                                    onPressed: () async {
                                      if (file == null) {
                                        Fluttertoast.showToast(
                                            msg: "Please Select an Image");
                                        return;
                                      }

                                      final ref = FirebaseStorage.instance
                                          .ref()
                                          .child("userImage")
                                          .child(DateTime.now().toString());
                                      await ref.putFile(file!);
                                      imageUrl = await ref.getDownloadURL();
                                      await _auth
                                          .createUserWithEmailAndPassword(
                                        email: _emailController.text
                                            .trim()
                                            .toLowerCase(),
                                        password:
                                            _passwordController.text.trim(),
                                      );

                                      FirebaseFirestore firebaseFirestore =
                                          FirebaseFirestore.instance;
                                      User? user = _auth.currentUser;

                                      UserModel userModel = UserModel();

                                      // writing all the values
                                      userModel.uid = user!.uid;
                                      userModel.imageUrl = imageUrl;
                                      userModel.name = _nameController.text;
                                      userModel.email = _emailController.text;
                                      userModel.password = _passwordController.text;
                                      userModel.confirmPassword = _confirmPasswordController.text;
                                      userModel.phoneNumber = _phoneNumerController.text;

                                      await firebaseFirestore
                                          .collection("users")
                                          .doc(user.uid)
                                          .set(userModel.toMap());
                                      Fluttertoast.showToast(
                                          msg:
                                              "Account created successfully :) ");

                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginAs()));
                                    },

                                    // try {
                                    //   if (_passwordController.text.length <=
                                    //       7) {
                                    //     Fluttertoast.showToast(
                                    //         msg:
                                    //             "Password at least 8 character");
                                    //     return;
                                    //   } else if (_emailController.text ==
                                    //       null) {
                                    //     Fluttertoast.showToast(
                                    //         msg: "Please enter email");
                                    //     return;
                                    //   } else if (_phoneNumerController
                                    //           .text.length !=
                                    //       11) {
                                    //     Fluttertoast.showToast(
                                    //         msg:
                                    //             "Phone number is not correct");
                                    //     return;
                                    //   } else if (_passwordController.text !=
                                    //       _confirmPasswordController.text) {
                                    //     Fluttertoast.showToast(
                                    //         msg:
                                    //             "Confirm Password is change");
                                    //     return;
                                    //   } else {
                                    //     final ref = FirebaseStorage.instance
                                    //         .ref()
                                    //         .child("userImage")
                                    //         .child(DateTime.now().toString());
                                    //     await ref.putFile(file!);
                                    //     imageUrl = await ref.getDownloadURL();
                                    //     await _auth
                                    //         .createUserWithEmailAndPassword(
                                    //       email: _emailController.text
                                    //           .trim()
                                    //           .toLowerCase(),
                                    //       password:
                                    //           _passwordController.text.trim(),
                                    //     );

                                    //     final User? user = _auth.currentUser;
                                    //     final _uid = user!.uid;
                                    //     // FirebaseFirestore.instance.col
                                    //     FirebaseFirestore.instance
                                    //         .collection('users')
                                    //         .doc(_uid)
                                    //         .set({
                                    //       'id': _uid,
                                    //       'userImage': imageUrl,
                                    //       'name': _nameController.text,
                                    //       'email': _emailController.text,
                                    //       'password':
                                    //           _passwordController.text,
                                    //       'phoneNo':
                                    //           _phoneNumerController.text,
                                    //       'type': valuechoose,
                                    //       'createdAt': Timestamp.now(),
                                    //     });
                                    //     // Navigator.canPop(context) ? Navigator.pop(context) : null;
                                    //     Navigator.push(
                                    //         context,
                                    //         MaterialPageRoute(
                                    //             builder: (context) =>
                                    //                 LoginAs()));
                                    //   }
                                    // } catch (error) {
                                    //   Fluttertoast.showToast(
                                    //       msg: error.toString());
                                    // }
                                    // },
                                    child: const Text(
                                      "Register",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ))),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 130),
                              child: RichText(
                                text: TextSpan(children: [
                                  const TextSpan(
                                    text: 'Already have account? ',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 33, 128, 206),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'Login',
                                      style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 33, 128, 206),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      LoginAs()));
                                        }),
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
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
}
