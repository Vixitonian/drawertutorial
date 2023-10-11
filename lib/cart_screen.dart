import 'package:drawertutorial/drawer_widget.dart';
import 'package:flutter/material.dart';

class CartScreenWidget extends StatelessWidget {
  const CartScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Builder(builder: (context) {
            return GestureDetector(
              child: const Icon(Icons.menu),
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
          title: const Text("Cart")),
      drawer: const MyDrawerWidget(),
      body: const Center(
        child: Text('This is Cart Page!'),
      ),
    );
  }
}
