import 'package:flutter/material.dart';

class CakeDesign extends StatefulWidget {
  @override
  State<CakeDesign> createState() => _CakeDesignState();
}

class _CakeDesignState extends State<CakeDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new),),
                IconButton(
                  onPressed: () {},
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
                        color: Colors.black,
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
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
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
                  margin: EdgeInsets.only(left: 20,right: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
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
                  margin: EdgeInsets.only(left: 20,right: 20),
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
                  margin: EdgeInsets.only(left: 20,right: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
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
                  margin: EdgeInsets.only(left: 20,right: 20),
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
                  margin: EdgeInsets.only(left: 20,right: 20),
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
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
                SizedBox(
                  width: 200,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
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
}
