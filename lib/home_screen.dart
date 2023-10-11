// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:drawertutorial/cart_screen.dart';
import 'package:drawertutorial/drawer_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Builder(builder: (context) {
            return GestureDetector(
              child: Icon(Icons.menu),
              onTap: () {
                //this is used to open the drawer when icon is pressed
                Scaffold.of(context).openDrawer();
              },
            );
          }),
          title: Text("Home")),
      drawer: MyDrawerWidget(),
      body: Center(
        child: Text('This is Home Screen!'),
      ),
    );
  }
}
