import 'package:cakeapp/custumer/HomeScreen/app_icon.dart';
import 'package:cakeapp/custumer/HomeScreen/big_text.dart';
import 'package:flutter/material.dart';


class AccountWidget extends StatelessWidget {
  AppIcon appIcon;
  BigText bigText;
  AccountWidget({Key key,  this.appIcon,  this.bigText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        top: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          appIcon,
          SizedBox(
            width: 20,
          ),
          bigText,
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            offset: Offset(0, 5),
            color: Colors.grey.withOpacity(0.2),
          ),
        ],
      ),
    );
  }
}
