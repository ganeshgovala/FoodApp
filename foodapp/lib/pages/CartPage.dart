// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:foodapp/models/CartModel.dart';
import 'package:foodapp/widgets/widget_support.dart';

class CartPage extends StatefulWidget {
  final CartModel _cartModel = CartModel();
  CartPage({
    super.key
  });

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: widget._cartModel.orderItems.length != 0 
              ? ListView.builder(
                itemCount: widget._cartModel.orderItems.length,
                itemBuilder: (context, index) {
                  return Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.blue,
                          ),
                          Column(
                            children: [
                              Text(widget._cartModel.orderItems[index]["name"]),
                              Text(widget._cartModel.orderItems[index]["price"])
                            ]
                          ),
                        ],
                      ),
                    ),
                  );
                }
              )

              : Center(child: Text("Cart is Empty", style: AppWidget.HeadingTextFieldStyle(),)),
            )
          ],
        ),
      ),
    );
  }
}