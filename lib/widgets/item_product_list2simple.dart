import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';

// import 'package:listview_builder_with_image_and_text/models/item_model.dart';
// import 'package:catalog'

class ItemProductList2Simple extends StatelessWidget {
  final Item item;

  const ItemProductList2Simple({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
      elevation: 2,
      child: Row(
        children: [
          Image.network(
            item.imageUrl,
            height: 100,
            width: 100,
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '${item.title}',
                // style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 4,
              ),
              Text('${item.desc}'),
            ],
          ),
          Image.asset(
            'assets/images/heart_icon.png',
            width: 22,
          ),
        ],
      ),
    );
  }
}
