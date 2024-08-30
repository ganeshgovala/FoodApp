// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/auth/auth_service.dart';
import 'package:foodapp/components/InputField.dart';
import 'package:foodapp/pages/BottomNav.dart';
import 'package:foodapp/pages/ForgotPasswordPage.dart';
import 'package:foodapp/pages/SignupPage.dart';
import 'package:foodapp/widgets/widget_support.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService _authService = AuthService();
  final formKey = GlobalKey<FormState>();
  LoginPage({super.key});
  
  void login(context) async {
    try {
      await _authService.sigin(_usernameController.text, _passwordController.text);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login Successful"))
      );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNav()));
    }
    on FirebaseAuthException catch(e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.code))
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children : [
          Container(
            alignment: Alignment(0, -1),
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 27, 27, 27),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Image.asset('assets/images/Logo.jpg', width: 200),
            ),
          ),
          Container(
            alignment: Alignment(0, 0.3),
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2.8),
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top : 180.0),
              child: Text(""),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120.0, left: 15),
            child: Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Text("LOGIN", style: AppWidget.HeadingTextFieldStyle()),
                        ),
                        SizedBox(height: 20),
                        InputField(hintText: "Username", obsecureText: false, icon: Icon(Icons.person_outline), controller: _usernameController),
                        SizedBox(height: 10),
                        InputField(hintText: "Password", obsecureText: true, icon: Icon(Icons.lock_outline), controller: _passwordController),
                        SizedBox(height: 3),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Row(mainAxisAlignment : MainAxisAlignment.end, children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordPage()));
                              },
                              child: Text("Forgot password ?", style: AppWidget.MenuHeading(),
                            ))
                          ],),
                        ),
                        SizedBox(height: 39),
                        GestureDetector(
                          onTap: () {
                            login(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 34, vertical: 10),
                            child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Poppins'))
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 1.3),
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont Have an account?", style: AppWidget.SubHeadingTextFieldStyle()),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                  child: Text("Create Account", style: AppWidget.MenuHeading())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}