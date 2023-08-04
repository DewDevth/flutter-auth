import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarTypeCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String detail;
  final String size;

  CarTypeCard(
      {required this.imageAsset,
      required this.title,
      required this.detail,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
      ),
      elevation: 5.0,
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(
              imageAsset,
              width: 60,
              height: 60,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: 16)),
                  Text(detail, style: TextStyle(fontSize: 16)),
                  Text(size, style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
