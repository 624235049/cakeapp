import 'package:cakeapp/config/api.dart';
import 'package:cakeapp/config/approute.dart';
import 'package:cakeapp/custumer/model/cake_n_model.dart';
import 'package:cakeapp/services/network.dart';

import 'package:flutter/material.dart';

class SOCakeBody extends StatefulWidget {
  @override
  _SOCakeBodyState createState() => _SOCakeBodyState();
}

class _SOCakeBodyState extends State<SOCakeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<CakeNModel>(
          future: NetworkService().getAllCakeNDio(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  //padding: EdgeInsets.only(top: 10, bottom: 15),
                  itemCount: snapshot.data.cakens.length,
                  itemBuilder: (context, index) {
                    var cake = snapshot.data.cakens[index];
                    return Material(
                      child: InkWell(
                        onTap: () {
                          //Navigator.pushNamed(context, AppRoute.CakeDetailRoute,arguments: cake);
                        },
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(40, 5, 25, 10),
                              height: 280,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.pink[100],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(100, 20, 20, 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 90,
                                          child: Text(
                                            cake.cnId.toString(),
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Column(
                                            //mainAxisAlignment: MainAxisAlignment.,
                                            children: [
                                              Text(
                                                'No.' + cake.cnId.toString(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: 140,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  IconButton(
                                                    onPressed: () {
                                                      //
                                                    },
                                                    icon: Icon(
                                                      Icons.delete_forever,
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                  IconButton(
                                                      onPressed: () {
                                                        //
                                                      },
                                                      icon: Icon(
                                                        Icons.edit,
                                                        color: Colors.indigo,
                                                      )),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 15,
                              bottom: 15,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  width: 200,
                                  image: NetworkImage(
                                      API.CN_IMAGE + cake.cnImages),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
