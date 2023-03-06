import 'dart:ffi';

import 'package:cakeapp/config/api.dart';
import 'package:cakeapp/config/approute.dart';
import 'package:cakeapp/custumer/model/cake_n_model.dart';
import 'package:cakeapp/custumer/model/cart_model.dart';
// import 'package:cakeapp/widgets/dialog.dart';
import 'package:cakeapp/helper/sqlite.dart';
import 'package:flutter/material.dart';


class CakeDetail extends StatefulWidget {
  //final CakegeneralModel cakegeneralModel;
  //CakeDetail({Key key, this.cakegeneralModel}) : super(key: key);
  @override
  State<CakeDetail> createState() => _CakeDetailState();
}

class _CakeDetailState extends State<CakeDetail> {
  Cakens _cn;
  String img;
  int _quantiy = 0;
  var cake_date = TextEditingController();
  var size_cake = TextEditingController();
  var cake_detail = TextEditingController();

  @override
  Void initSate() {
    cake_date.dispose();
    size_cake.dispose();
    cake_detail.dispose();
    _cn = Cakens();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Object arguments = ModalRoute
        .of(context)
        .settings
        .arguments;
    if (arguments is Cakens) {
      _cn = arguments;
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // IconButton(onPressed: () {
                //
                // }, icon: Icon(Icons.arrow_back_ios_new),
                // ),
                IconButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, AppRoute.CartRoute);
                  },
                  icon: Icon(Icons.shopping_cart_outlined),
                )
              ],
            ),
            elevation: 0,
            bottom: PreferredSize(
                child: Container(
                  //margin: EdgeInsets.only(left: 26)
                  child: Center(
                      child: Text(
                        'Cake Order Details',
                        style: TextStyle(
                            color: Colors.pink,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                ),
                preferredSize: Size.fromHeight(0)),
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                API.CN_IMAGE + _cn.cnImages,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'ขนาดเค้ก',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextFormField(
                      controller: size_cake,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '2lbs/3lbs/4lbs/5lbs',
                        //icon: Icon(Icons.email)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Text(
                        'เวลานัดรับเค้ก',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextFormField(
                      controller: cake_date,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'วัน/เดือน/ปี',
                        //icon: Icon(Icons.email)
                      ),

                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Text(
                        'ข้อความหน้าเค้ก',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextFormField(
                      controller: cake_detail,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        //hintText: 'Text',
                        //icon: Icon(Icons.email)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 25,
                    right: 25,
                    top: 25,
                    bottom: 25,
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_quantiy < 20) {
                              _quantiy++;
                            }
                          });
                        },
                        child: Icon(Icons.add),
                      ),
                      Text("$_quantiy"),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_quantiy > 0) {
                              _quantiy --;
                            }
                          });
                        },
                        child: Icon(Icons.remove),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: 200,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      addOrderToCart();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pink[100], shape: StadiumBorder()),
                    child: Text("Add to Cart"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<Null> addOrderToCart() async {
    String cn_id = _cn.cnId.toString();
    String cn_img = _cn.cnImages;
    String cn_size = size_cake.text;
    String date = cake_date.text;
    String cn_text = cake_detail.text;
    String cn_price = _cn.cnPrice;
    int priceInt = int.parse(cn_price);
    int sumInt = priceInt * _quantiy;

    Map<String, dynamic> map = Map();
    map['cake_id'] = cn_id;
    map['cake_size'] = cn_size;
    map['cake_img'] = cn_img;
    map['cake_date'] = date;
    map['cake_text'] = cn_text;
    map['amount'] = _quantiy.toString();
    map['price'] = cn_price;
    map['sum'] = sumInt.toString();


    print('map ==> ${map.toString()}');
    CartModel cartModel = CartModel.fromJson(map);

    var object = await SQLiteHlper().readAllDataFormSQLite();
    print('object lenght == ${object.length}');

    if (object.length == 0) {
      await SQLiteHlper().insertDataToSQLite(cartModel).then((value) =>
      {
        print('insert Sucess'),
      });
    } else {
      String brandSQLite = object[0].cake_id;
      if (brandSQLite.isNotEmpty) {
        await SQLiteHlper().insertDataToSQLite(cartModel).then((value) =>
        {
          print('insert Sucess'),
          //showToast("Insert Sucess")
        });
      } else {
        // normalDialog(context, 'รายการสั่งซื้อผิดพลาด !');
      }
    }
  }

}
