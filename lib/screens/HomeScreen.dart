import 'package:flutter/material.dart';
import "dart:io";

import 'package:food_base/data/data.dart';
import 'package:food_base/screens/CartScreen.dart';
import 'package:food_base/widgets/recent_orders.dart';
import 'package:food_base/widgets/nearby_restaurants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 30.0,
          onPressed: (){},
        ),
        title: Text("Food Delivery"),
        centerTitle: true,
        actions: [
          FlatButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => CartScreen()));
            },
              child: Text(
                "Cart (${currentUser.cart.length})",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.grey[100],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(width: 0.8),
                ),
                hintText: "Search food or restaurants...",
                prefixIcon: Icon(
                  Icons.search,
                  size: 30.0,
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {

                  },
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                      width: 0.8,
                      color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ),
          RecentOrders(),
          NearbyRestaurants(),
        ],
      ),
    );
  }
}
