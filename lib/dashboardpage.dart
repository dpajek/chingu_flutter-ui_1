import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:chingu_flutter/datadefinition.dart';
import 'package:chingu_flutter/detailspage.dart';
import 'package:chingu_flutter/allarticlespage.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key key, @required this.articles, @required this.context, @required this.title})
      : super(key: key);

  final List<Article> articles;
  final BuildContext context;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          //constraints: BoxConstraints(maxWidth: 400), //put this on the stack instead?
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            // made mainaxisalignment.spacearound not work -- margins wrong
            child: Column(
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug painting" (press "p" in the console, choose the
              // "Toggle Debug Paint" action from the Flutter Inspector in Android
              // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
              // to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // Search Row
                Container(
                  constraints:
                      BoxConstraints(maxWidth: 400), //max width on search
                  padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                  height: 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            //enabledBorder: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).focusColor),
                            ),
                            hintText: 'Search',
                            //contentPadding: const EdgeInsets.symmetric(vertical: 0),
                          ),
                          style: TextStyle(
                              fontSize: 15.0, height: 1.0, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),

                // Article Cards Row
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: 600), //max width on card titles
                      padding: EdgeInsets.fromLTRB(10, 20, 10,
                          0), //changed to top=20 after making scrollable
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Articles',
                            //textAlign: TextAlign.left,
                          ),
                          FlatButton(
                            //color: Colors.blue,
                            textColor: Theme.of(context).buttonColor,
                            disabledColor: Colors.grey,
                            disabledTextColor: Colors.black,
                            padding: EdgeInsets.all(0),
                            splashColor: Colors.blueAccent,
                            onPressed: _pushAllArticles,
                            child: Text(
                              "All Articles",
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 180,
                      child: ListView(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        scrollDirection: Axis.horizontal,
                        children: [
                          // Card 1
                          _buildArticleCard(articles[0]),

                          // Card 2
                          _buildArticleCard(articles[1]),

                          // Card 2
                          _buildArticleCard(articles[2]),
                        ],
                      ),
                    ),
                  ],
                ),

                // Articles of the Day
                Container(
                  constraints: BoxConstraints(
                      maxWidth:
                          400), // more responsive -- don't let expand too far on wider screens
                  padding: EdgeInsets.fromLTRB(10, 20, 10,
                      0), // changed to top=20 after making scrollable
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Article of the Day',
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: SizedBox(
                              height: 170,
                              //width: 150,
                              child: Card(
                                // This ensures that the Card's children (including the ink splash) are clipped correctly.
                                clipBehavior: Clip.antiAlias,
                                color: Colors.blueGrey[100],
                                child: Container(),
                              ),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: SizedBox(
                              height: 165,
                              //width: 150,
                              child: Card(
                                // This ensures that the Card's children (including the ink splash) are clipped correctly.
                                clipBehavior: Clip.antiAlias,
                                color: Colors.blueGrey[200],
                                child: Container(),
                              ),
                            ),
                          ),

                          // Main Article of Day Card
                          SizedBox(
                            height: 160,
                            //width: 150,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) {
                                      return DetailsPage(
                                        article: articles[2],
                                      );
                                    },
                                  ),
                                );
                              },
                              child: Card(
                                // This ensures that the Card's children (including the ink splash) are clipped correctly.
                                clipBehavior: Clip.antiAlias,
                                //color: Colors.blueGrey,
                                //shape: null,

                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Image(
                                        //image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-3.jpg'),
                                        image: AssetImage(articles[2].pic),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter,
                                        //height: 100,
                                        width: 1000,
                                      ),
                                    ),
                                    Container(
                                      //color: Colors.blueGrey,
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        //crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            articles[2].title,
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white),
                                            textAlign: TextAlign.left,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 0, 10, 0),
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: Colors.white,
                                                  size: 20,
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 0, 10, 0),
                                                child: Icon(
                                                  Icons.bookmark,
                                                  color: Colors.white,
                                                  size: 20,
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 0, 10, 0),
                                                child: Icon(
                                                  Icons.reply,
                                                  color: Colors.white,
                                                  size: 20,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ), //scrollale
        ),
      ),
    );
  }

  Widget _buildArticleCard(Article art) => Container(
        //Expanded(
        //child: SizedBox(
        //height: 180,
        width: 160,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return DetailsPage(
                    article: art,
                  );
                },
              ),
            );
          },
          child: Card(
            // This ensures that the Card's children (including the ink splash) are clipped correctly.
            clipBehavior: Clip.antiAlias,
            //color: Colors.blueGrey,
            //shape: null,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage(art.pic),
                    //'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    //height: 100,
                    width: 1000,
                  ),
                ),
                Container(
                  //color: Colors.blueGrey,
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        art.title,
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        art.subtitle,
                        style: TextStyle(fontSize: 11.0, color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // ),
      );

  void _pushAllArticles() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return AllArticlesPage(articles: articles, context: context);
        },
      ),
    );
  }
}
