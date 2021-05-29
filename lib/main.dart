import './transaction.dart';
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
  final List<Transactions> transactions = [
    Transactions(
        id: 'r1', title: 'New Phone', amount: 88.90, date: DateTime.now()),
    Transactions(
        id: 'r2', title: 'New Belt', amount: 10.40, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Container(
                width: double.infinity,
                color: Colors.blue,
                child: Text('CHART'),
              ),
              elevation: 5,
            ),
            Column(
              children: [Card(), Card(), Card()],
            )
          ],
        ));
  }
}
