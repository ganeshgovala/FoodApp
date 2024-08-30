// ignore_for_file: unused_import, unnecessary_import, unused_field, must_be_immutable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp/auth/auth_service.dart';
import 'package:foodapp/pages/SignupPage.dart';

class ForgotPasswordPage extends StatefulWidget {
  TextEditingController _emailController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  ForgotPasswordPage({super.key});
  final formKey = GlobalKey<FormState>();

  String email = "";

  resetPassword(context) async {
    try {
        await _auth.sendPasswordResetEmail(email: email);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email Sent", style: TextStyle(color: Colors.white))));
    } 
    on FirebaseAuthException catch(e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.code, style: TextStyle(color: Colors.white))));
    }
  }

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Password Recovery",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                "Enter your Email",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(height: 80),
            Form(
              key: widget.formKey,
              child: Column(
                children: [
                  TextField(
                    controller: widget._emailController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.white,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if(widget.formKey.currentState!.validate()) {
                                setState(() {
                                  widget.email = widget._emailController.text;
                                });
                            }
                            widget.resetPassword(context);
                          },
                          child: Container(
                            alignment: Alignment(0, 0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            padding: EdgeInsets.symmetric(vertical: 14),
                            child: Text("Send Email", style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                            ),)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text("Don't have and Account ? ", style: TextStyle(
                            color: const Color.fromARGB(255, 205, 205, 205),
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        )),
                        GestureDetector(
                            onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                            },
                          child: Text("Create Account", style: TextStyle(
                              color: const Color.fromARGB(255, 255, 230, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.w800
                          )),
                        )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
