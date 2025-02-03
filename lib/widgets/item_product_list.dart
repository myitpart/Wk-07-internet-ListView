import 'package:flutter/material.dart';

import '../models/item_model.dart';
// import 'package:listview_builder_with_image_and_text/models/item_model.dart';
// import 'package:catalog'

class ItemProductList extends StatelessWidget {
  final Item item;
  const ItemProductList({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Card(
        elevation: 0,
        color: Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ListTile(
            // minLeadingWidth: 20,
            horizontalTitleGap: 10,
            leading: Image.network(
              item.imageUrl,
              // height: 90,
              width: 58,
            ),
            title: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text(item.title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18)),
            ),
            subtitle: Text(item.desc, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 15)),
            trailing: Text(
              "${item.price}",
              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
