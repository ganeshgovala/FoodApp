import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String TransactionName;
  const TransactionCard({
    required this.TransactionName,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 1.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.yellow.shade700,
                  child: Icon(Icons.person, color: const Color.fromARGB(255, 0, 0, 0))
                ),
                SizedBox(width: 10),
                Text("Transaction Name", style : TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800
                )),
              ],
            ),
            Text("\$12", style : TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ))
          ],
        )
      ),
    );
  }
}