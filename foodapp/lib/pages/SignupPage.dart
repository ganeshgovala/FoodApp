// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:foodapp/components/InputField.dart';
import 'package:foodapp/pages/LoginPage.dart';
import 'package:foodapp/widgets/widget_support.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  SignupPage({super.key});

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
                height: MediaQuery.of(context).size.height / 1.6,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text("Signup", style: AppWidget.HeadingTextFieldStyle()),
                      ),
                      SizedBox(height: 20),
                      InputField(hintText: "Name", obsecureText: false, icon: Icon(Icons.person_outline), controller: _usernameController,),
                      SizedBox(height: 10),
                      InputField(hintText: "Email", obsecureText: false, icon: Icon(Icons.email_outlined), controller: _emailController),
                      SizedBox(height: 10),
                      InputField(hintText: "Password", obsecureText: true, icon: Icon(Icons.lock_outline), controller: _passwordController,),
                      SizedBox(height: 30),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 34, vertical: 10),
                        child: Text("Signup", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Poppins'))
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 1.22),
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already Have an account?", style: AppWidget.SubHeadingTextFieldStyle()),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text("Login", style: AppWidget.MenuHeading())
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}