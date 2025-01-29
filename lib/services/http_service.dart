// http

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/product.dart';

class HttpService {
  // fetch all products
  Future<List<Product>> fetchData({required String strUrl}) async {
    debugPrint('HTTP GET url: $strUrl');
    final response = await http.get(
      Uri.parse(strUrl),
      headers: {
        "Accept": "application/json",
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      List jSONbody = json.decode(response.body);
      return jSONbody
          .map((e) => Product.fromJson(e))
          .toList(); // use method in the class
    } else {
      debugPrint('failed loading');
      throw Exception('Failed to load data!');
    }
  }

  // fetch 1 record
  Future<Product> fetchRecord({required String strUrl}) async {
    debugPrint('url: $strUrl');
    final response = await http.get(
      Uri.parse(strUrl),
      headers: {
        "Accept": "application/json",
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      debugPrint('${response.body.toString()}');
      return Product.fromJson(jsonDecode(response.body));
    } else {
      debugPrint('failed loading data!');
      throw Exception('Failed to load data!');
    }
  }
}
