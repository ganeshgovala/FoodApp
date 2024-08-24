// ignore_for_file: unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:foodapp/widgets/widget_support.dart';

class BiriyaniCard extends StatelessWidget {
  final String image;
  final String name;
  final int price;
  const BiriyaniCard({
    required this.price,
    required this.name,
    required this.image,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 6.0,
        child: Container(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                alignment: Alignment(0, 1),
                child : ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset('assets/images/'+image+'.jpg', height: 100, width: 120, fit: BoxFit.cover)
                ),
              ),
              SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: AppWidget.boldTextFieldStyle()),
                  Text("\$${price}", style: AppWidget.HeadingTextFieldStyle(),),
                ]
              ),
            ]
          ),
        ),
      ),
    );
  }
}