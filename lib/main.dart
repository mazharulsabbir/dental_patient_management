import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dental Care',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: MyHomePage(title: 'Sheba Dental Care'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final wordPair = WordPair.random();
  List<WordPair> _nameList = <WordPair>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: _buildSuggestions());
  }

  Widget _buildSuggestions() {
    return ListView.builder(itemBuilder: (BuildContext _context, int i) {
      final int index = i ~/ 2;

      if (index >= _nameList.length) {
        _nameList.addAll(generateWordPairs().take(10));
      }

      double a = Random.secure().nextDouble();

      return _listItem(_nameList[index], a);
    });
  }

  Widget _listItem(WordPair pair, double amount) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      margin: new EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      topLeft: Radius.circular(16.0))),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('\৳', style: TextStyle(fontSize: 30.0))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "87234",
                        style: TextStyle(fontSize: 30.0),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: <Widget>[Text("Date: 12/12/12")],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 16.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      "man.png",
                      width: 24.0,
                      height: 24.0,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(pair.asPascalCase, style: TextStyle(fontSize: 30.0)),
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(pair.asPascalCase),
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(pair.asPascalCase),
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(pair.asPascalCase),
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(pair.asPascalCase),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
