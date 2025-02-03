// left image, title description and rating star

import 'package:flutter/material.dart';

import '../models/item_model.dart';

class ItemProductList4 extends StatefulWidget {
  final Item item;

  const ItemProductList4({Key? key, required this.item}) : super(key: key);

  @override
  _ItemProductList4State createState() => _ItemProductList4State();
}

class _ItemProductList4State extends State<ItemProductList4> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        width: double.infinity,
        // height: 100,
        padding: EdgeInsets.all(6),
        // margin: EdgeInsets.all(6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 90,
              width: 90,
              // child: Image.network(
              //   "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
              child: Image.network(
                widget.item.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${widget.item.title}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      // style: Theme.of(context).textTheme.titleMedium,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "${widget.item.desc}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      // style: Theme.of(context).textTheme.titleSmall,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 8),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("4.5"),
                  Icon(
                    Icons.star,
                    size: 14,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
