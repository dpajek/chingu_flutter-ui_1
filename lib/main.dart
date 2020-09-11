
import 'package:chingu_flutter/datadefinition.dart';
import 'package:chingu_flutter/dashboardpage.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        //cardColor: Colors.blueGrey,
        cardTheme: CardTheme(
          color: Colors.blueGrey,
          shadowColor: Colors.redAccent,
          elevation: 4,
        ),

        focusColor: Colors.redAccent,

        appBarTheme: AppBarTheme(
          color: Colors.blueGrey,
          shadowColor: Colors.redAccent,
          //elevation: 2
        ),

        buttonColor: Colors.red[300],

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Dashboard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final articles = <Article>[];


  @override
  Widget build(BuildContext context) {
    articles.add(Article("Dark Mountain", "A bit dreary", "assets/mountain1.jpg"));
    articles.add(Article("Cold Mountain", "It's so cold", "assets/mountain2.jpg"));
    articles.add(
        Article("Warm Mountain", "The trees are nice", "assets/mountain3.jpg"));

    articles[0].content = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
          child: Text(
            'Chapter 1',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: Text(
            'Chapter 2',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );

    articles[1].content = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
          child: Text(
            'Chapter 1',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Text(
            'La la la Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: Text(
            'Chapter 2',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Text(
            'La la la ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );

    articles[2].content = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
          child: Text(
            'Only Chapter',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Text(
            'Blah blah Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return DashboardPage(articles: articles, context: context, title: widget.title);
  }

  
}
