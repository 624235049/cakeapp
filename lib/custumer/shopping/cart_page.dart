
import 'package:flutter/material.dart';

import 'cart_body.dart';

class CartPage extends StatefulWidget {
  
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: _buildAppBar(),
      body: CartBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text('Cart',style: TextStyle(color: Colors.pink[200]),),
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,color: Colors.pink[100],
        ),
        onPressed: () {
          //Navigator.pushNamed(context, AppRoute.TypeCakeRoute);
        },
      ),
    );
  }
}