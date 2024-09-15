import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:foodapp/components/TransactionCard.dart';
import 'package:foodapp/widgets/app_constant.dart';
import 'package:http/http.dart' as http;

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {

  Map<String, dynamic>? paymentIntent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("My Wallet", style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w700
              )),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade700,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.wallet, color: Colors.black, size: 26),
                        SizedBox(height: 5),
                        Text("Total Amount", style: TextStyle(
                          color: const Color.fromARGB(255, 37, 37, 37),
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        ),),
                        SizedBox(height: 4),
                        Text("\$290.00", style: TextStyle(
                          color: Colors.black,
                          fontSize: 38,
                          fontWeight: FontWeight.w700,
                        )),
                        Text("3 * * * - * * * * - * * * * - * 3 9 1", style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ))
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      alignment: Alignment(0, 0),
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(192, 192, 192, 1),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text(" +\n A\n D\n D", style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ))
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Text("Add Money", style : TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              )),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        makePayment("50");
                        print("---");
                      },
                      child: Container(
                        alignment: Alignment(0, 0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade600,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                        child: Text("50", style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ))
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade600,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      child: Text("75", style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ))
                    ),
                    SizedBox(width: 5),
                    Container(
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade600,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      child: Text("100", style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ))
                    ),
                    SizedBox(width: 5),
                    Container(
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade600,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      child: Text("125", style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ))
                    ),
                    SizedBox(width: 5),
                    Container(
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade600,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                      child: Text("150", style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ))
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("Transactions", style : TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              )),
              SizedBox(
                height: 20
              ),
              TransactionCard(TransactionName: "Chicken Biriyani", price: 39, color: const Color.fromARGB(255, 40, 40, 40)),
              TransactionCard(TransactionName: "Chicken Pizza", price: 19, color: const Color.fromARGB(255, 40, 40, 40)),
              TransactionCard(TransactionName: "Mixed Mandi", price: 59, color: const Color.fromARGB(255, 40, 40, 40)),
              TransactionCard(TransactionName: "Mutton Pulow", price: 49, color: const Color.fromARGB(255, 40, 40, 40)),
              TransactionCard(TransactionName: "Veg Mixed Curry", price: 15, color: const Color.fromARGB(255, 40, 40, 40)),
              TransactionCard(TransactionName: "Aloo fry", price: 10, color: const Color.fromARGB(255, 40, 40, 40)),
              TransactionCard(TransactionName: "Meals", price: 18, color: const Color.fromARGB(255, 40, 40, 40)),
              TransactionCard(TransactionName: "Mutton Mandhi", price: 55, color: const Color.fromARGB(255, 40, 40, 40)),
              TransactionCard(TransactionName: "Chicken fry", price: 22, color: const Color.fromARGB(255, 40, 40, 40)),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> makePayment(String amount) async {
    try {
      paymentIntent = await createPaymentIntent(amount, 'INR');
      await Stripe.instance.initPaymentSheet(paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntent!['client_secret'],
        style: ThemeMode.dark,
        merchantDisplayName: 'ganesh',
      )).then((value) {});

      displayPaymentSheet(amount);
    } catch (e,s) {
      print("Exception : $e $s");
    }
  }

  displayPaymentSheet(String amount) async {
    try {
      await Stripe.instance.presentPaymentSheet().then((value) async{
        showDialog(context: context, builder: (_) => AlertDialog(
          content: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.check_circle, color: const Color.fromARGB(255, 74, 189, 78)), Text("Payment Successful")
                ],
              )
            ],
          )
        ));
        // await usergetprofile();
        paymentIntent = null;
      }).onError((error, stackTrace) {
        print("Error is ---> $error $stackTrace");
      });
    } on StripeException catch(e) {
      print("Error is ---> $e");
      showDialog(context: context, builder: (context) => AlertDialog(
        content: Text("Cancelled"),
      ));
    } catch(e) {
      print("Error ---> $e");
    }
  }

  createPaymentIntent(String amount, String currency) async {
    try {
      Map<String, dynamic> body = {
        'amount' : calculateAmount(amount),
        'currency' : currency,
        'payment_method_types[]' : 'card',
      };

      var response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        headers: {
          'Authorization' : 'Bearer $secretKey',
          'Content-Type' : 'application/x-www-form-urlencoded' 
        },
        body: body,
      );
      print('Payment Intent Body --> ${response.body.toString()}');
      return jsonDecode(response.body);
    } catch (e) {
      print('Error charging user : ${e.toString()}');
    }
  }

  calculateAmount(String amount) {
    final calculatedAmount = (int.parse(amount ) * 100);

    return calculatedAmount.toString();
  }
}