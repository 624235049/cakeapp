//import 'package:appbirthdaycake/cakepage/cake_body.dart';
import 'package:cakeapp/config/approute.dart';
import 'package:cakeapp/custumer/cakepage/cake_body.dart';
import 'package:flutter/material.dart';

class CakePage extends StatefulWidget {
  const CakePage({Key key}) : super(key: key);

  @override
  State<CakePage> createState() => _CakePageState();
}

class _CakePageState extends State<CakePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: _buildAppBar(),
      body: CakeBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text('Cake',style: TextStyle(color: Colors.pink[200]),),
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,color: Colors.pink[100],
        ),
        onPressed: () {
          Navigator.pushNamed(context, AppRoute.HomeRoute);
        },
      ),
    );
  }
}
