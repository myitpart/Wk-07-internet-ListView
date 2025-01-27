// fetch data from a server
import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
import 'services/http_service.dart';
// import 'models/product.dart';

// Future<Product> fetchData() async {
//   // not be used
//   final response = await http
//       .get(Uri.parse('https://myitpart.github.io/api/json/1.json'), headers: {
//     'Content-Type': 'application/json; charset=UTF-8',
//   });
//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response, then parse the JSON.
//     debugPrint('my_app response.body : ${response.body}');
//     // return ProductData.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
//     return Product.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 200 OK response,then throw an exception.
//     throw Exception('Failed to load data.');
//   }
// }

class DetailPage extends StatefulWidget {
  final int productId;

  const DetailPage({super.key, required this.productId});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // static const String baseUrl =
  //     'https://myitpart.github.io/api/json/'; // API json
  static const String baseUrl = 'https://itpart.net/mobile/api/'; // API json
  String baseImgUrl =
      'https://myitpart.github.io/api/images/'; // base Image URL

  HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Detail Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FutureBuilder(
                future: httpService.fetchRecord(
                    // strUrl: '$baseUrl${widget.productId}.json'), //fetchData(),
                    // strUrl:  'https://itpart.net/mobile/api/product1.php'), //fetchData(),
                    strUrl:
                        '$baseUrl/product${widget.productId}.php'), //fetchData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    // until data is fetched, show loader
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasData) {
                    return Column(
                      children: [
                        // Text('${snapshot.data!.id}'),
                        Text(snapshot.data!.title,
                            style: Theme.of(context).textTheme.titleLarge),
                        const SizedBox(height: 10),
                        Image.network('$baseImgUrl${snapshot.data!.imageUrl}'),
                        const SizedBox(height: 20),
                        Text(snapshot.data!.description,
                            style: TextStyle(fontSize: 18)),
                      ],
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}',
                        style: TextStyle(fontSize: 18));
                  }
                  return const Text('No data available!');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
