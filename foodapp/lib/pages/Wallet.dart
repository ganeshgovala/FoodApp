import 'package:flutter/material.dart';
import 'package:foodapp/components/TransactionCard.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
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
                      height: 170,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text(" +\n A\n D\n D", style: TextStyle(
                        color: Colors.white,
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
                    Container(
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
              TransactionCard(TransactionName: "Transaction1", price: 29),
              TransactionCard(TransactionName: "Transaction1", price: 29),
              TransactionCard(TransactionName: "Transaction1", price: 29),
              TransactionCard(TransactionName: "Transaction1", price: 29),
              TransactionCard(TransactionName: "Transaction1", price: 29),
              TransactionCard(TransactionName: "Transaction1", price: 29),
              TransactionCard(TransactionName: "Transaction1", price: 29),
              TransactionCard(TransactionName: "Transaction1", price: 29),
              TransactionCard(TransactionName: "Transaction1", price: 29),
            ],
          ),
        ),
      ),
    );
  }
}