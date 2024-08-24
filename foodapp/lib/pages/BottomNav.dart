// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/pages/Homepage.dart';
import 'package:foodapp/pages/Order.dart';
import 'package:foodapp/pages/ProfilePage.dart';
import 'package:foodapp/pages/Wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  late List<Widget> pages;
  late HomePage _homepage;
  late OrderPage _orderpage;
  late ProfilePage _profilepage;
  late WalletPage _walletpage;

  @override
  void initState() {
    _homepage = HomePage();
    _orderpage = OrderPage();
    _profilepage = ProfilePage();
    _walletpage = WalletPage();
    pages = [_homepage, _orderpage, _walletpage, _profilepage];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          Icon(Icons.home_outlined, color: Colors.white, size: 25),
          Icon(Icons.delivery_dining_outlined, color: Colors.white, size: 25),
          Icon(Icons.wallet_outlined, color: Colors.white, size: 25),
          Icon(Icons.person_outline_outlined, color: Colors.white, size: 25),
        ]
      ),
      body: pages[currentIndex],
    );
  }
}