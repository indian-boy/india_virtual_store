import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:india_virtual_store/datas/product_data.dart';

class CartProduct {
  String cid;
  String category;
  String pid;
  int quantity;
  String size;

  ProductData productData;

  CartProduct();

  CartProduct.fromDocument(DocumentSnapshot snapshot) {
    cid = snapshot.documentID;
    category = snapshot.data["category"];
    pid = snapshot.data["pid"];
    quantity = snapshot.data["quantity"];
    size = snapshot.data["size"];
  }

  Map<String, dynamic> toMap() {
    return {
      "category": category,
      "pid": pid,
      "quantity": quantity,
      "size": size,
      // "product": productData.toResumeMap()
    };
  }
}
