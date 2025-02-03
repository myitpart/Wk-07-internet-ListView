// item Tile for GridView

// https://appmaking.com/flutter-row-column-example/

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import '../models/item_model.dart';

class ItemProductGrid extends StatefulWidget {
  final Item item;

  const ItemProductGrid({super.key, required this.item});

  @override
  _ItemProductGridState createState() => _ItemProductGridState();
}

class _ItemProductGridState extends State<ItemProductGrid> {
  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat('#,##,000');
    return Card(
      // color: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      elevation: 3,
      child: Container(
        // color: Colors.white,
        // width: 240,
        // height: 360,
        child: Column(
          children: [
            Container(
              // height: 210-20,
              height: MediaQuery.of(context).size.width / 2 - 13,
              // width: double.infinity, // overflow
              child: Image.network(
                // "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
                widget.item.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          child: Text(
                            // "product Item Title .. Umberla for sale",
                            widget.item.title,
                            // style: TextStyle(
                            //   fontWeight: FontWeight.normal,
                            //   fontSize: 15.0,
                            // ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 2),

                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width /2  - 80,
                        //   child: Text(
                        //     "${widget.item.desc}",
                        //     overflow: TextOverflow.fade,
                        //     maxLines: 1,
                        //     // softWrap: false,
                        //   ),
                        // )
                      ],
                    ),
                  ),
                  // Container(
                  //   child: Row(
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: [
                  //       Text("4.5"),
                  //       Icon(
                  //         Icons.star,
                  //         size: 14,
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),

            // Price
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '฿ ${NumberFormat.decimalPattern().format(widget.item.price)}',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text("4.5"),
                        Text('${widget.item.star}'),
                        Icon(
                          Icons.star,
                          size: 14,
                        ),
                      ],
                    ),
                  )
                  // ElevatedButton(
                  //   child: Text("Add To Cart"),
                  //   onPressed: () {},
                  // ),
                  // ElevatedButton(
                  //   child: Text("Buy Now"),
                  //   onPressed: () {},
                  // ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 2,
            // )
          ],
        ),
      ),
    );
  }
}
