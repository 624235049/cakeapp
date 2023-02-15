import 'package:cakeapp/Register/registerbody.dart';
import 'package:cakeapp/config/approute.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
 
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: _buildAppBar(),
      body: RegisterBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pushNamed(context, AppRoute.LoginRoute);
        },
      ),
    );
  }
}
