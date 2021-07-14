import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey[700],
      selectedItemColor: Colors.orange,
      items: [
        _bottomNavigationBarItem(
          iconImg: CupertinoIcons.home,
          label: "Home",
        ),
        _bottomNavigationBarItem(
          iconImg: CupertinoIcons.shopping_cart,
          label: "Cart",
        ),
        _bottomNavigationBarItem(
          iconImg: CupertinoIcons.bag,
          label: "Order",
        ),
        _bottomNavigationBarItem(
          iconImg: Icons.favorite_outline,
          label: "Order",
        ),
        _bottomNavigationBarItem(
          iconImg: CupertinoIcons.bars,
          label: "Order",
        ),
      ],
    );
  }

  _bottomNavigationBarItem({IconData iconImg, String label}) {
    return BottomNavigationBarItem(
      icon: Icon(iconImg),
      label: label,
    );
  }
}
