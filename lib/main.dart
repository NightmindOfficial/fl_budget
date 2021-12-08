import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Budgeting App',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.greenAccent,
              child: Text('Hier kommt der Chart hin.'),
              elevation: 3,
            ),
          ),
          Card(
            child: Text('Hier kommt der Chart hin.'),
          ),
        ],
      ),
    );
  }
}
