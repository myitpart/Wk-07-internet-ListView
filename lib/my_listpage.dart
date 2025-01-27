// ListView calls httpService ext http Project/ http use servvice listpge

import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'models/product.dart';
import 'services/http_service.dart';

class MyListPage extends StatefulWidget {
  const MyListPage({super.key});

  @override
  State<MyListPage> createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {
  HttpService httpService = HttpService();

  static const String baseUrl =
      // 'https://myitpart.github.io/api/json/products.json'; // API json
      'https://itpart.net/mobile/api/products.php'; // API json
  String baseImgUrl =
      // 'https://myitpart.github.io/api/images/'; // base Image URL
      'https://itpart.net/mobile/images/'; // base Image URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('My App'),
      ),
      body: Center(
        child: FutureBuilder(
          future: httpService.fetchData(strUrl: baseUrl),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              return _buildListView(snapshot.data!);
              // return Text('data: ${snapshot.data![0].title} ');
            } else {
              return const Text('No data found.');
            }
          },
        ),
      ),
    );
  }

  // test before ListView (keep it)
  // Text _buildListView_(List<Product> products) {
  //   return Text('title: ${products[0].title.toString()} \n ');
  // }

  ListView _buildListView(List<Product> products) {
    debugPrint('total products: ${products.length}');
    return ListView.separated(
      // shrinkWrap: true,
      // padding: EdgeInsets.all(8),
      // itemCount: products.length,
      itemCount: products.length,
      itemBuilder: (context, index) => ListTile(
        leading: Image.network(
          '$baseImgUrl/${products[index].imageUrl}',
          width: 86,
        ),
        title: Text(
            // products[index],
            products[index].title,
            style: TextStyle(fontSize: 18)),
        subtitle: Text(products[index].description),
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(
                productId: products[index].id,
              ),
            )),
      ),
      separatorBuilder: (context, int index) => const Divider(),
    );
  }
}
