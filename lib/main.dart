import 'package:book_flutter/my_listpage.dart';

// import 'detail_page.dart';
// import 'package:book_flutter/http_basic.dart';
// import 'package:book_flutter/my_futurebuilder_page.dart';

import 'package:flutter/material.dart';

import 'http_basic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      // home: MyFutureBuilderPage(),
      // home: HttpBasic(),
      // home: DetailPage(),
      // home: DetailPage(id: 0),
      home: const MyListPage(),
    );
  }
}
