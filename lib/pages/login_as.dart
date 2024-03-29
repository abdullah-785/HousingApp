import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:housesales/pages/home_page.dart';
import 'package:housesales/pages/Register.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'forgetpassword.dart';

class LoginAs extends StatefulWidget {
  LoginAs({Key? key}) : super(key: key);

  @override
  State<LoginAs> createState() => _LoginAsState();
}

class _LoginAsState extends State<LoginAs> {
  
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70.0,),
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
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Login",
                            style: TextStyle(
                              // fontStyle: GoogleFonts.aBeeZee(),
                              fontFamily: 'GreatVibes-Regular',
                                fontSize: 45.0, fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          TextFormField(
                            controller: _emailController,
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
                          const SizedBox(
                            height: 20.0,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPassword()));
                            },
                            child: const Text("Forget Password", style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 33, 128, 206)
                            ),),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          

                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 45.0,
                              child: ElevatedButton(
                                  // margin: EdgeInsets.only(bottom: 10),
                                  onPressed: () {
                                    _auth.signInWithEmailAndPassword(email: _emailController.text, password:  _passwordController.text).then((uid) =>{
                                    Fluttertoast.showToast(msg: "LoginSuccessfully"),
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeToo())),
                                  }).catchError((e){
                                    Fluttertoast.showToast(msg: e!.message);
                                  });

                                  },
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))),
                          const SizedBox(height: 10),
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
