import '';
import '';

import 'product_data.dart';

class CartProduct {

  String cid;

  String category;
  String pid;

  int quantity;
  String size;

  ProductData productData;

  CartProduct();

  CartProduct.fromDocument(document){
    cid = document.documentID;
    category = document.data["category"];
    pid = document.data["pid"];
    quantity = document.data["quantity"];
    size = document.data["size"];
  }

  Map<String, dynamic> toMap(){
    return {
      "category": category,
      "pid": pid,
      "quantity": quantity,
      "size": size,
      "product": productData.toResumedMap()
    };
  }

}