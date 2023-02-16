import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'layout Builder',
      home: MyStateLessClass(),
    );
  }
}

class MyStateLessClass extends StatelessWidget {
  const MyStateLessClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Responsive Layout',
        ),
        backgroundColor: const Color.fromARGB(255, 255, 142, 4),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return buildWideContainer();
          } else {
            return buildnarrowContainer();
          }
        },
      ),
    );
  }

  Widget buildnarrowContainer() {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        // color: Colors.red,
        child: Image.asset(
            '/Users/iphtech30/Desktop/test/flutter/images/img.jpeg'),
      ),
    );
  }

  Widget buildWideContainer() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: 400,
            width: 300,
            child: Image.asset(
                '/Users/iphtech30/Desktop/test/flutter/images/game.jpeg'),
          ),
          SizedBox(
            height: 400,
            width: 300,
            // color: Colors.yellow,
            child: Image.asset(
                '/Users/iphtech30/Desktop/test/flutter/images/game.webp'),
          )
        ],
      ),
    );
  }
}
