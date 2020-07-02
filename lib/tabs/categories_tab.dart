import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:india_virtual_store/tiles/item_tile.dart';

class CategoriesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: Firestore.instance.collection("categories").getDocuments(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Container(
              height: 200.0,
              alignment: Alignment.center,
              child: CircularProgressIndicator());
        } else {
          List<Widget> dividedTiles = ListTile.divideTiles(
                  tiles: snapshot.data.documents.map((doc) {
                    return ItemTile(doc);
                  }).toList(),
                  color: Colors.grey[500])
              .toList();

          return ListView(
            children: dividedTiles,
          );
        }
      },
    );
  }
}
