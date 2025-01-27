// fetch data from a server
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> fetchData() async {
  final response =
      // await http.get(Uri.parse('https://myitpart.github.io/api/json/0.json'));
      await http.get(Uri.parse('https://itpart.net/mobile/api/data_id0.php'));
  // await http.get(Uri.parse('https://itpart.net/mobile/api/0.json'));

  if (response.statusCode == 200) {
    // If the server returned a 200 OK response

    // parse the JSON.
    // final jSONbody = json.decode(response.body);
    final jSONbody = jsonDecode(utf8.decode(response.bodyBytes));
    String strBody = response.body.toString(); // return from the server
    debugPrint('${strBody}');

    return strBody;
    // return jSONbody['title'];
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('');
  }
}

class HttpBasic extends StatefulWidget {
  const HttpBasic({super.key});

  @override
  State<HttpBasic> createState() => _HttpBasicState();
}

class _HttpBasicState extends State<HttpBasic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('HttpBasic Page'),
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // until data is fetched, show loader
            return const CircularProgressIndicator();
          } else if (snapshot.hasData) {
            return Text('${snapshot.data}', style: TextStyle(fontSize: 18));
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}', style: TextStyle(fontSize: 18));
          }
          return const Text('No data available!');
        },
      ),
    );
  }
}
