// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:foodapp/models/CartModel.dart';
import 'package:foodapp/widgets/widget_support.dart';

class ItemPage extends StatefulWidget {
  final String image;
  final String name;
  int price;
  final CartModel _cartModel = CartModel();
  ItemPage({
    required this.image,
    required this.name,
    required this.price,
    super.key
  });

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {

  int itemCount = 1;
  late int _price;
  late int original_price;

  @override
  void initState() {
    super.initState();
    _price = widget.price;
    original_price = widget.price;
  }

  void increment() {
    if(itemCount < 9) {
      setState(() {
        itemCount++;
        _price = original_price;
        _price *= itemCount;
      });
    }
  }
  void decrement() {
    if(itemCount > 1) {
      setState(() {
        itemCount--;
        _price = original_price;
        _price *= itemCount;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: screenWidth - 50,
                  height: screenWidth - 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/'+widget.image+'.jpg', fit: BoxFit.cover,)
                  ),
                ),
              ],
            ),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.name, style: AppWidget.HeadingTextFieldStyle()),
                Row(
                  children: [
                    GestureDetector(
                      onTap: decrement,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(6)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 0),
                        child: Text("-", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400))
                      ),
                    ),
                    SizedBox(width: 10),
                    Text("${itemCount}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: increment,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(6)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        child: Text("+", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400))
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text("Tomato pizza features a crisp crust, fresh tomato sauce, sliced tomatoes, mozzarella, basil, and a drizzle of olive oil. Simple, flavorful.",
                 style : TextStyle(color: Colors.black54, fontSize: 15)),
            SizedBox(height: 12),
            Row(
              children: [
                Text("Delivery Time", style: AppWidget.MenuHeading()),
                SizedBox(width: 10),
                Row(
                  children: [
                    Icon(Icons.alarm, size: 20),
                    Text(" 30min", style: AppWidget.MenuHeading()),
                  ],
                ),
              ]
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total price", style: AppWidget.MenuHeading()),
                    Text("\$${_price}", style: AppWidget.HeadingTextFieldStyle(),),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget._cartModel.addItemsToCart(
                        widget.name, widget.image, _price, itemCount,
                      );
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        Text("Add to Cart", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Poppins')),
                        SizedBox(width: 6),
                        Icon(Icons.shopping_cart_outlined ,color: Colors.white, size: 16)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}