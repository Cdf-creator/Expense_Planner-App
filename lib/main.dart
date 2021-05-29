import './transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
          mainAxisAlignment: MainAxisAlignment.start,
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
            Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: 'Title'),
                      ),
                      TextField(
                          decoration: InputDecoration(labelText: 'Amount')),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Add Transaction'),
                        style: ElevatedButton.styleFrom(primary: Colors.brown),
                      )
                    ],
                  ),
                )),
            Column(
              children: transactions.map((tx) {
                return Card(
                    child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.brown,
                        width: 2,
                      )),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '\$${tx.amount}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.brown,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx.title,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          DateFormat.yMMMd().format(tx.date),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ));
              }).toList(),
            )
          ],
        ));
  }
}
