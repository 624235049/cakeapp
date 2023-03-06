import 'dart:convert';

import 'package:cakeapp/config/api.dart';
import 'package:cakeapp/config/approute.dart';
import 'package:cakeapp/config/appsetting.dart';
import 'package:cakeapp/custumer/model/usermodel.dart';
import 'package:cakeapp/services/network.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHidden = false;

  var _usernameController = TextEditingController();

  var _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(252, 205, 246, 1.0),
          Color.fromRGBO(226, 231, 241, 1.0),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            reverse: true,
            padding: EdgeInsets.all(32),
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Image.asset('assets/images/birthday.png'),
                Container(
                  child: Center(
                    child: Text(
                      'Welcome ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontFamily: 'Oleo'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        controller: _usernameController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          icon: Icon(
                              Icons.person,
                              color: Colors.pink[100],
                            ),
                            border: InputBorder.none, hintText: 'Username'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: isHidden,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.pink[100],
                            ),
                            suffixIcon: IconButton(
                              color: Colors.pink[100],
                                icon: isHidden
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                                onPressed: togglePasswordVisibility),
                            border: InputBorder.none,
                            hintText: 'Password'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () async {
                    checkAuthen();
                    final username = _usernameController.text;
                    final password = _passwordController.text;
                    final message = await NetworkService().validateUserLoginDio(username, password);
                    print(message);
                    if (message != 'failed') {
                      print('login success');
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setString(AppSetting.userNameSetting, username);
                      prefs.setString(AppSetting.passwordSetting, password);

                      Navigator.pushNamed(context, AppRoute.HomeRoute);
                    }else{
                      print('login failed');
                     }
                  },
                  child: Text('Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink[100],
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoute.RegisterRoute);
                      },
                      child: Text(
                        'Register now',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void togglePasswordVisibility() => setState(() => isHidden = !isHidden);

  Future<Null> checkAuthen() async {

    var email =   _usernameController.text;
    var password = _passwordController.text;

    String url =
        '${API.BASE_URL}/flutterapi/src/getUserWhereUser.php?isAdd=true&User=$email';
    try {
      Response response = await Dio().get(url);
      //print('res = $response');
      print("$password ");
      var result = json.decode(response.data);
      print('result = $result');
      for (var map in result) {
        CUsertable userModel = CUsertable.fromJson(map);
        print("password === ${userModel.password}");
        if (password == userModel.password) {
          print("password === true == ${userModel.password}");
          String chooseType = userModel.chooseType;
          if (chooseType == 'Customer') {
            RoutetoService(userModel);
            Navigator.pushNamedAndRemoveUntil(context, AppRoute.HomeRoute, (route) => false);
            } else if (chooseType == 'Employee') {
            RoutetoService(userModel);
            Navigator.pushNamedAndRemoveUntil(context, AppRoute.HomeShopOwnerRoute, (route) => false);
          } else {
            print('Error!');
          }
        } else {
          print( 'Password ผิด กรุณาลองใหม่อีกครั้ง ค่ะ');
        }
      }
    } catch (e) {
      //normalDialog(context, 'Password ผิด กรุณาลองใหม่อีกครั้ง ค่ะ');
    }
  }
  Future<Null> RoutetoService( CUsertable userModel) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(API().keyId, userModel.id);
    preferences.setString(API().keyType, userModel.chooseType);
    preferences.setString(API().keyName, userModel.name);

  }
}
