import 'package:flutter/material.dart';

class MyFutureBuilderPage extends StatefulWidget {
  const MyFutureBuilderPage({super.key});

  @override
  State<MyFutureBuilderPage> createState() => _MyFutureBuilderPageState();
}

// Simulating an asynchronous operation that returns a Future
Future<String> fetchData() async {
  await Future.delayed(const Duration(seconds: 3));
  return "Hello, FutureBuilder!";
}

class _MyFutureBuilderPageState extends State<MyFutureBuilderPage> {
  // Simulating an asynchronous operation that returns a Future , can be here
  // Future<String> fetchDataxx() async {
  //   await Future.delayed(const Duration(seconds: 3));
  //   return "Hello, FutureBuilder!";
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: const Text('FutureBuilder Page'),
        ),
        body: Center(
          child: FutureBuilder(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // until data is fetched, show loader
                return const CircularProgressIndicator();
              } else if (snapshot.hasData) {
                return Text('Result: ${snapshot.data}',
                    style: const TextStyle(fontSize: 20));
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const Text('No data available!');
            },
          ),
        ));
  }
}
