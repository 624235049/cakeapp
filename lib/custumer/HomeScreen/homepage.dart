import 'package:cakeapp/custumer/HomeScreen/homebody.dart';
import 'package:cakeapp/custumer/HomeScreen/profile.dart';
import 'package:cakeapp/custumer/shopping/cart_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
     HomeBodyPage(),
     CartPage(),
     AccountPage(),
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
          //showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
              backgroundColor: Colors.pink[200],
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart',
                backgroundColor: Colors.pink[200]),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.pink[200]),
          ],
        ),
        body: screens[currentIndex]);
  }
}
