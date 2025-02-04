// import '../models/item_model.dart';
// cloned from Widget 5
import 'package:book_flutter/models/product.dart';
import 'package:flutter/material.dart';

import '../config/constants.dart';

class ItemProductList5 extends StatefulWidget {
  final Product item;

  const ItemProductList5({Key? key, required this.item}) : super(key: key);

  @override
  _ItemProductList5State createState() => _ItemProductList5State();
}

class _ItemProductList5State extends State<ItemProductList5> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Container(
          // color: Colors.white,
          width: double.infinity,
          height: 308,
          margin: EdgeInsets.all(2),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://codesundar.com/wp-content/uploads/2020/08/78494341_2774884842574595_7784880823911579648_n-300x300.jpg"),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.item.title,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              widget.item.description,
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                // child: Image.network(
                //   "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
                //   fit: BoxFit.cover,
                child: Image.network(
                  '${Constants.baseImgUrl}${widget.item.imageUrl}',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        children: [Icon(Icons.thumb_up), Text("Like")],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [Icon(Icons.comment), Text("Comment")],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [Icon(Icons.share), Text("Share")],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
