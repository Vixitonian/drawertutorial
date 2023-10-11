// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:drawertutorial/cart_screen.dart';
import 'package:flutter/material.dart';

class MyDrawerWidget extends StatefulWidget {
  const MyDrawerWidget({super.key});

  @override
  State<MyDrawerWidget> createState() => _MyDrawerWidgetState();
}

class _MyDrawerWidgetState extends State<MyDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Profile:',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Jessica Udeh',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              decoration: BoxDecoration(color: Colors.black),
            ),
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
          ),
          ListTile(
            title: Text('Cart'),
            leading: Icon(Icons.shopping_cart),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreenWidget()));
            },
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
          ),
          Divider(
            thickness: 3,
          ),
          ListTile(
            title: Text('Cart'),
            leading: Icon(Icons.shopping_cart),
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
          ),
          Divider(
            thickness: 3,
          ),
          Spacer(),
          ListTile(
            title: Text('Log Out'),
            leading: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
