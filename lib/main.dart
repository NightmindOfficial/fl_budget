import 'package:fl_budget/transaction.dart';
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
// Liste von Transaktionen

  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Neue Schuhe',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Latte',
      amount: 4.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Netflix Subscription',
      amount: 12.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Otis\' OnlyFans Subscription',
      amount: 4.20,
      date: DateTime.now(),
    ),
  ];

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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            color: Colors.redAccent,
            child: Text('Hier kommen die Transaktionen hin.'),
          ),
        ],
      ),
    );
  }
}
