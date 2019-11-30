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
      body: _buildSuggestions()
    );
  }

Widget _buildSuggestions() {
    return ListView.builder(
      itemBuilder: (BuildContext _context, int i) {        
        final int index = i ~/ 2;
        
        if (index >= _nameList.length) {
          _nameList.addAll(generateWordPairs().take(10));
        }
        return _listItem(_nameList[index]);
      }
    );
  }

  Widget _listItem(WordPair pair) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0)
      ),
      margin: new EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Container(
        padding: new EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(pair.asPascalCase, style: TextStyle(fontSize: 30.0)),
              ],
            ),
            Row(
              children: <Widget>[
                Text(pair.asUpperCase),
              ],
            ),
          ],
        ),
      ),
    );
  }
}