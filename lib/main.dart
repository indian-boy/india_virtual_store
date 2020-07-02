import 'package:flutter/material.dart';
import 'package:india_virtual_store/models/cart_model.dart';
import 'package:india_virtual_store/models/user_model.dart';

import 'package:india_virtual_store/screens/home_screen.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(StartApp());

class StartApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: ScopedModelDescendant<UserModel>(
        builder: (context, child, model) {
          return ScopedModel<CartModel>(
            model: CartModel(model),
            child: MaterialApp(
              title: "Indian's Clothing",
              theme: ThemeData(
                  primarySwatch: Colors.blue,
                  primaryColor: Color.fromARGB(255, 4, 125, 141)),
              debugShowCheckedModeBanner: false,
              home: HomeScreen(),
            ),
          );
        },
      ),
    );
  }
}
