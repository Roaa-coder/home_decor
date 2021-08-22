import 'package:flutter/material.dart';
import 'package:home_decor/constants.dart';
import 'package:home_decor/screens/welcome/components/models/product.dart';
import 'package:home_decor/screens/welcome/components/shop_body.dart';

class ShoppingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Image.asset(
            "assets/icons/icon-04.png",
            height: 30.0,
          ),
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Categories",
                  style: TextStyle(color: Colors.black),
                ),
                Container(
                    child: Image.asset(
                  "assets/icons/icon-05.png",
                  height: 20,
                )),
              ],
            ),
          ),
          elevation: 0.0,
          bottom: TabBar(
            isScrollable: true,
            // indicatorSize: TabBarIndicatorSize.label,
            labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
            unselectedLabelColor: Colors.deepPurple[200],
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

              // color: Colors.deepPurple[200],
            ),
            tabs: [
              Tab(
                child: Container(
                  width: 130,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.deepPurple.shade200, width: 1)),
                  child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/icons/icon-03.png",
                            height: 35,
                          ),
                          Text(
                            "Price Range",
                            style: TextStyle(color: Colors.deepPurple[200]),
                          ),
                        ],
                      )),
                ),
              ),
              Tab(
                child: Container(
                  height: 35,
                  width: 99,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.deepPurple.shade200, width: 1)),
                  child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/icons/icon-03.png",
                            height: 35,
                          ),
                          Text("Tags"),
                        ],
                      )),
                ),
              ),
              Tab(
                child: Container(
                  height: 35,
                  width: 99,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.deepPurple.shade200, width: 1)),
                  child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/icons/icon-03.png",
                            height: 35,
                          ),
                          Text("Style"),
                        ],
                      )),
                ),
              ),
              Tab(
                child: Container(
                  height: 35,
                  width: 99,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.deepPurple.shade200, width: 1)),
                  child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/icons/icon-03.png",
                            height: 35,
                          ),
                          Text("Color"),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
        body: shopBody(),
      ),
    );
  }
}
