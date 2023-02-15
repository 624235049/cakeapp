import 'package:cakeapp/shop_owner/home/homebody_so.dart';
import 'package:flutter/material.dart';

class HomeShopOwner extends StatefulWidget {
  @override
  _HomeShopOwnerState createState() => _HomeShopOwnerState();
}

class _HomeShopOwnerState extends State<HomeShopOwner> {
  int currentIndex = 0;
  final screens = [
    HomeBodyShopOwner(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.pink[200],
        unselectedItemColor: Colors.pink[50],
        iconSize: 20,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
              backgroundColor: Colors.pink[200]),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps_rounded),
              label: 'Cart',
              backgroundColor: Colors.pink[200]),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.pink[200]),
        ],
      ),
      body:  screens[currentIndex],
    );
  }
}
