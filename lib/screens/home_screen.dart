import 'package:flutter/material.dart';
import 'package:india_virtual_store/tabs/home_tab.dart';
import 'package:india_virtual_store/tabs/categories_tab.dart';
import 'package:india_virtual_store/widgets/cart_button.dart';
import 'package:india_virtual_store/widgets/custom_drawer.dart';

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
            title: Text("Categorias"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: CategoriesTab(),
          floatingActionButton: CartButton(),
        )
      ],
    );
  }
}
