// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodapp/components/PizzaCard.dart';
import 'package:foodapp/models/PizzaModel.dart';
import 'package:foodapp/pages/ItemPage.dart';

class PizzaPage extends StatefulWidget {
  final Pizzamodel _pizzamodel = Pizzamodel();
  PizzaPage({super.key});

  @override
  State<PizzaPage> createState() => _PizzaPageState();
}

class _PizzaPageState extends State<PizzaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          childAspectRatio: 2 / 3,
        ),
        padding: EdgeInsets.all(10),
        itemCount: widget._pizzamodel.pizzaDetails.length,
        itemBuilder: (context, index) {
          return PizzaCard(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemPage(
                    image: widget._pizzamodel.pizzaDetails[index]["image"],
                    name: widget._pizzamodel.pizzaDetails[index]["name"],
                    price: widget._pizzamodel.pizzaDetails[index]["price"],
                  ),
                ),
              );
            },
            image: widget._pizzamodel.pizzaDetails[index]["image"],
            name: widget._pizzamodel.pizzaDetails[index]["name"],
            price: widget._pizzamodel.pizzaDetails[index]["price"],
          );
        },
      ),
    );
  }
}