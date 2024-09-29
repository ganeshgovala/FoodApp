import 'package:flutter/material.dart';
import 'package:foodapp/auth/auth_service.dart';
import 'package:foodapp/components/ProfileCard.dart';
import 'package:foodapp/pages/LoginPage.dart';

class ProfilePage extends StatefulWidget {
  AuthService auth = AuthService();
  ProfilePage({
    super.key
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red[700],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Jhon Doe", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800
                    ),),
                    SizedBox(height: 2),
                    Text("23 March 2024", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[700],
                    ),)
                  ],
                )
              ),
              SizedBox(height : 5),
              Divider(),
              ProfileCard(name: "Notifications", icon: Icons.notifications_outlined),
              ProfileCard(name: "Change Location", icon: Icons.map_outlined),
              ProfileCard(name: "Previous Orders", icon: Icons.delivery_dining_outlined),
              ProfileCard(name: "Change Password", icon: Icons.password_outlined),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  widget.auth.logout();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Text("Logout", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}