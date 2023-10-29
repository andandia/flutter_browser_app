import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120, // 任意の高さを設定
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildNavItem(0, Icons.home, 'ホーム'),
              buildNavItem(1, Icons.search, '検索'),
              buildNavItem(2, Icons.favorite, 'お気に入り'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildNavItem(3, Icons.shopping_cart, 'カート'),
              buildNavItem(4, Icons.person, 'プロフィール'),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildNavItem(int index, IconData icon, String label) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(icon,
              color: _selectedIndex == index ? Colors.blue : Colors.grey),
          Text(
            label,
            style: TextStyle(
              color: _selectedIndex == index ? Colors.blue : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
