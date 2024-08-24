// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class FoodTile extends StatefulWidget {
  final String name;
  final void Function()? onTap;
  FoodTile({
    required this.onTap,
    required this.name,
    super.key
  });

  @override
  State<FoodTile> createState() => _FoodTileState();
}

class _FoodTileState extends State<FoodTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        children: [
          Material(
            elevation: 6.0,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(9),
              child: Image.asset('assets/images/'+widget.name+'.jpg', height: 55, width: 55, fit: BoxFit.cover,),
            ),
          ),
          SizedBox(height: 6),
          Text(widget.name, style: TextStyle(color: const Color.fromARGB(158, 0, 0, 0), fontSize: 14)),
        ],
      ),
    );
  }
}