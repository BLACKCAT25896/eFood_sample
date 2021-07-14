import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            Image.asset(
              'assets/images/efood_bike.png',
              height: 50,
              width: 50,
            ),
            Text(
              'eFood',
              style: TextStyle(fontSize: 20, color: Colors.orange),
            ),
          ],
        ),
        Icon(Icons.notifications),
      ],
    );
  }
}
