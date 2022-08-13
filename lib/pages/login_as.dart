import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:housesales/pages/Register.dart';

class LoginAs extends StatefulWidget {
  LoginAs({Key? key}) : super(key: key);

  // final String title = "Select";

  @override
  State<LoginAs> createState() => _LoginAsState();
}

class _LoginAsState extends State<LoginAs> {
  List ListItem = ['Login As Buyer', 'Login As Seller'];
  String? valuechoose;

  // get onChanged => null;
  @override
  Widget build(BuildContext context) {
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
                    // const SizedBox(width: 30,),
                    // const Text("Login", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 16, 16, 16)),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  // height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,

                  // height: 20,
                  child: Card(
                    margin: EdgeInsets.only(top: 90),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Login Now",
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                label: Text("Email"),
                                hintText: "abc@gmail.com",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
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
                          const SizedBox(
                            height: 15.0,
                          ),
                          DropdownButton(
                            elevation: 10,
                            hint: const Text("Select Type"),
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
                          const SizedBox(
                            height: 40.0,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 45.0,
                              child: ElevatedButton(
                                  // margin: EdgeInsets.only(bottom: 10),
                                  onPressed: () {},
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))),
                          const SizedBox(height: 10),
                          // const Padding(
                          //   padding: EdgeInsets.only(bottom: 20),
                          //   child: Text(
                          //     "Have not Account? Login",
                          //     style: TextStyle(
                          //       color: Color.fromARGB(255, 33, 128, 206),
                          //       fontWeight: FontWeight.bold,
                          //       fontSize: 18,
                          //     ),

                          //   ),
                          // )
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: RichText(
                              text: TextSpan(children: [
                                const TextSpan(
                                  text: 'Create account - ',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 33, 128, 206),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                TextSpan(
                                    text: 'Register',
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 33, 128, 206),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Register()));
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
            ],
          ),
        ),
      ),
    );
  }
}
