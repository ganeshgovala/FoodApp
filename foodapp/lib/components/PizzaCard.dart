// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_interpolation_to_compose_strings, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:foodapp/widgets/widget_support.dart';

class PizzaCard extends StatelessWidget {
  final String image;
  final String name;
  final int price;
  final void Function()? onTap;
  const PizzaCard({
    required this.onTap,
    required this.image,
    required this.name,
    required this.price,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          borderRadius: BorderRadius.circular(14),
          elevation: 5.0,
          child: Container(
            padding: EdgeInsets.symmetric(vertical:10, horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 140,
                  width: 110,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/'+image+'.jpg', fit: BoxFit.cover)
                  )
                ),
                SizedBox(height: 5),
                Text(
                  name.length < 13 ? name : name.substring(0,9) + "...",
                  style: AppWidget.MenuHeading(),),
                Text("\$${price}", style: AppWidget.boldTextFieldStyle()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}