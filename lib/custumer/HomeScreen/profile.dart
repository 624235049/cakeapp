import 'package:cakeapp/custumer/HomeScreen/accountwidget.dart';
import 'package:cakeapp/custumer/HomeScreen/app_icon.dart';
import 'package:cakeapp/custumer/HomeScreen/big_text.dart';
import 'package:cakeapp/custumer/HomeScreen/logout.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 20),
        child: Column(
          // profile Icons
          children: [
            SizedBox(height: 80,),
            AppIcon(
              icon: Icons.person,
              backgroundColor: Colors.blueAccent,
              iconColor: Colors.white,
              iconSize: 80,
              size: 150,
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //name
                    AccountWidget(
                      appIcon: AppIcon(
                        icon: Icons.person,
                        backgroundColor: Colors.blueAccent,
                        iconColor: Colors.white,
                        iconSize: 25,
                        size: 50,
                      ),
                      bigText: BigText(
                        text: "Boat",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //phone
                    AccountWidget(
                      appIcon: AppIcon(
                        icon: Icons.phone,
                        backgroundColor: Colors.amber,
                        iconColor: Colors.white,
                        iconSize: 25,
                        size: 50,
                      ),
                      bigText: BigText(
                        text: "+66 611675623",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //email
                    AccountWidget(
                      appIcon: AppIcon(
                        icon: Icons.email,
                        backgroundColor: Colors.amber,
                        iconColor: Colors.white,
                        iconSize: 25,
                        size: 50,
                      ),
                      bigText: BigText(
                        text: "Boatsuban2543@gamil.com",
                      ),
                    ),
                    SizedBox(height: 15),
                    //address
                    AccountWidget(
                      appIcon: AppIcon(
                        icon: Icons.location_on,
                        backgroundColor: Colors.amber,
                        iconColor: Colors.white,
                        iconSize: 25,
                        size: 50,
                      ),
                      bigText: BigText(
                        text: "Fill in your address",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //message
                    GestureDetector(
                      onTap: (){
                        signOutProcess(context);
                      },
                      child: AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.logout,
                          backgroundColor: Colors.redAccent,
                          iconColor: Colors.white,
                          iconSize: 25,
                          size: 50,
                        ),
                        bigText: BigText(
                          text: "ออกจากระบบ",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}