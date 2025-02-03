// https://appmaking.com/flutter-row-column-example/


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/item_model.dart';

class ItemProductList3 extends StatefulWidget {
  final Item item;

  const ItemProductList3({super.key, required this.item});

  @override
  _ItemProductList3State createState() => _ItemProductList3State();
}

class _ItemProductList3State extends State<ItemProductList3> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.white,
        // width: 240,
        // height: 300,
        child: Column(
          children: [
            Container(
              // height: 160,
              width: double.infinity,
              child: Image.network(
                // "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
                widget.item.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // "Umberla for sale",
                          widget.item.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(height: 4),
      
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 80,
                          child: Text(
                            "${widget.item.desc}",
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            // softWrap: false,
                          ),
                        )
                      ],
                    ),
                  ),
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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text("Add To Cart"),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text("Buy Now"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            )
          ],
        ),
      ),
    );
  }
}
