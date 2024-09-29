import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final IconData icon;
  const ProfileCard({
    required this.name,
    required this.icon,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon,
                  size: 20, color: Colors.grey[800]),
              SizedBox(width: 10),
              Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[800]),
        ],
      ),
    );
  }
}
