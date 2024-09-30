// ignore_for_file: prefer_const_constructors, unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:foodapp/firebase_options.dart';
import 'package:foodapp/pages/BottomNav.dart';
import 'package:foodapp/pages/ForgotPasswordPage.dart';
import 'package:foodapp/pages/Homepage.dart';
import 'package:foodapp/pages/LoginPage.dart';
import 'package:foodapp/pages/OnBoard.dart';
import 'package:foodapp/pages/ProfilePage.dart';
import 'package:foodapp/pages/Wallet.dart';
import 'package:foodapp/widgets/app_constant.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
   if (!kIsWeb) {
    // Initialize Stripe for mobile platforms only (iOS/Android)
    Stripe.publishableKey = 'your-publishable-key';
  }
  runApp(
    MyApp(),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}