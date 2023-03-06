import 'package:cakeapp/config/approute.dart';
import 'package:flutter/material.dart';

class HomeBodyShopOwner extends StatefulWidget {
  @override
  _HomeBodyShopOwnerState createState() => _HomeBodyShopOwnerState();
}

class _HomeBodyShopOwnerState extends State<HomeBodyShopOwner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('assets/images/preview.png'),
            ),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(252, 205, 246, 1.0),
              Color.fromRGBO(226, 231, 241, 1.0),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 110,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cake to Order',
                          style: TextStyle(
                              fontFamily: 'Bebas',
                              fontSize: 40,
                              color: Colors.pink[200]),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(fontFamily: 'Bebas', fontSize: 20),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      //Navigator.pushNamed(context, routeName);
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Custumer Order',
                                      style: TextStyle(
                                          fontFamily: 'Bebas',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                      maxLines: 2,
                                    ),
                                    Text(
                                      'ออเดอร์ลูกค้า',
                                      style: TextStyle(
                                          fontFamily: 'Bebas',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                      maxLines: 2,
                                    ),
                                    // Image.asset(
                                    //   'assets/images/7025560.png',
                                    //   height: 100,
                                    //   width: 100,
                                    //   fit: BoxFit.cover,
                                    //   alignment: Alignment.centerLeft,
                                    // )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      height: 180,
                      width: 360,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade500,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                        ],
                        image: DecorationImage(
                          image: AssetImage('assets/images/7025560.png'),
                          alignment: Alignment.centerRight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.SOCakeRoute);
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'BirthDay Cake',
                                      style: TextStyle(
                                          fontFamily: 'Bebas',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                      maxLines: 2,
                                    ),
                                    Text(
                                      'เค้กในร้าน',
                                      style: TextStyle(
                                          fontFamily: 'Bebas',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                      maxLines: 2,
                                    ),
                                    // Image.asset(
                                    //   'assets/images/7025560.png',
                                    //   height: 100,
                                    //   width: 100,
                                    //   fit: BoxFit.cover,
                                    //   alignment: Alignment.centerLeft,
                                    // )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      height: 180,
                      width: 360,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade500,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                        ],
                        image: DecorationImage(
                          image: AssetImage('assets/images/imageC.png'),
                          alignment: Alignment.centerRight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 140,)
            ],
          ),
        ),
      ),
    );
  }
}
