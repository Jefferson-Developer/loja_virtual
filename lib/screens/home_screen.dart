import 'package:flutter/material.dart';

import '../tabs/home_tab.dart';
import '../tabs/orders_tab.dart';
import '../tabs/places_tab.dart';
import '../tabs/products_tab.dart';
import '../widgets/cart_button.dart';
import '../widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Produtos",
              style: TextStyle(color: Colors.greenAccent),
            ),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ProductsTab(),
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Meus Pedidos",
              style: TextStyle(color: Colors.greenAccent),
            ),
            centerTitle: true,
          ),
          body: OrdersTab(),
          drawer: CustomDrawer(_pageController),
        )
      ],
    );
  }
}
