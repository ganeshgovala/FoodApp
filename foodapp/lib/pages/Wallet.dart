import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My Wallet", style: TextStyle(
                      color: Colors.grey.shade900,
                      fontSize: 18,
                      fontWeight: FontWeight.w900
                    )),
                    Text("Active", style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 14,
                    ))
                  ],
                ),
                Container(
                  height: 40,
                  width: 40,
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 216, 195, 0),
                    child: Icon(Icons.person, color: Colors.white)
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                boxShadow: [ BoxShadow(
                  color: const Color.fromARGB(255, 219, 219, 219),
                  blurRadius: 30,
                  spreadRadius: 5,
                  offset: Offset(1, 1),
                ) ],
                color: const Color.fromARGB(255, 234, 210, 0),
                borderRadius: BorderRadius.circular(70)
              ),
              padding: EdgeInsets.symmetric(vertical: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Wallet", style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                          )),
                          SizedBox(width: 10),
                          Icon(Icons.wallet, size: 30),
                        ],
                      ),
                      Text("280/-", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 34
                      ))
                    ],
                  ),
                ],
              )
            )
          ],
        ),
      )
    );
  }
}