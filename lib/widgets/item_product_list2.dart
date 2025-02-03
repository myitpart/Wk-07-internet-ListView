import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';

// import 'package:listview_builder_with_image_and_text/models/item_model.dart';
// import 'package:catalog'

class ItemProductList2 extends StatelessWidget {
  final Item item;

  const ItemProductList2({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 3, horizontal: 6),
      elevation: 0,
      color: Colors.grey[300],
      child: Row(
        children: [
          Image.network(
            item.imageUrl,
            height: 100 ,
            width: 100,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '${item.title}',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 4,),
                    Text('${item.desc}'),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset('assets/images/heart_icon.png', width: 22,),
          ),
        ],
      ),
    );
  }
}
