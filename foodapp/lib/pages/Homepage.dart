// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:foodapp/components/BiriyaniCard.dart';
import 'package:foodapp/components/FoodTile.dart';
import 'package:foodapp/components/PizzaCard.dart';
import 'package:foodapp/pages/CartPage.dart';
import 'package:foodapp/pages/ItemPage.dart';
import 'package:foodapp/pages/PizzaPage.dart';
import 'package:foodapp/widgets/widget_support.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Hello John,", style: AppWidget.boldTextFieldStyle(),),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 14, 14, 14),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.shopping_cart_outlined, color: Colors.white)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text("Delicious Food", style: AppWidget.HeadingTextFieldStyle(),),
              SizedBox(height: 4),
              Text("Discover and get great Food", style: AppWidget.SubHeadingTextFieldStyle(),),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FoodTile(name: "Pizza", onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PizzaPage()));
                  },),
                  FoodTile(name: "Burger", onTap: () {},),
                  FoodTile(name: "IceCream", onTap: () {},),
                  FoodTile(name: "Chicken", onTap: () {},),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Explore Pizza's", style: AppWidget.HeadingTextFieldStyle()),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PizzaPage()));
                  }, child: Text("more", style: TextStyle(fontSize: 14, color: Colors.black87)))
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PizzaCard(image: "TomatoPizza", name: "Tomato Pizza", price : 25, onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ItemPage(image: "TomatoPizza", name: "Tomato Pizza", price: 29,)));}),
                    PizzaCard(image: "MixedPizza", name: "Mixed Veg Pizza", price : 39, onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ItemPage(image: "MixedPizza", name: "Mixed Veg Pizza", price: 49,)));}),
                    PizzaCard(image: "MushroomPizza", name: "Mushroom Pizza", price : 29, onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ItemPage(image: "MushroomPizza", name: "Mushroom Pizza", price: 35,)));},),
                    PizzaCard(image: "VegetablePizza", name: "Veg Pizza", price : 19, onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ItemPage(image: "VegetablePizza", name: "Vegetable Pizza", price: 29,)));},),
                  ]
                ),
              ),
              SizedBox(height: 16),
              Text("Discover Biriyaini's", style: AppWidget.HeadingTextFieldStyle()),
              SizedBox(height: 16),
              BiriyaniCard(price: 59, name: "Chicken Dum\nBiriyani", image: "ChickenBiriyani"),
              BiriyaniCard(price: 39, name: "Veg Biriyani", image: "VegBiriyani"),
              BiriyaniCard(price: 49, name: "Egg Biriyani", image: "EggBiriyani"),
            ],
          ),
        ),
      ),
    );
  }
}