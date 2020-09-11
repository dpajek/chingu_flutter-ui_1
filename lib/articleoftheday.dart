import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:chingu_flutter/datadefinition.dart';
import 'package:chingu_flutter/detailspage.dart';

class ArticleOfTheDay extends StatelessWidget {
  ArticleOfTheDay({Key key, @required this.article, @required this.context})
      : super(key: key);

  final Article article;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                      article: article,
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
                      //image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-3.jpg'),
                      image: AssetImage(article.pic),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                      //height: 100,
                      width: 1000,
                    ),
                  ),
                  Container(
                    //color: Colors.blueGrey,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          article.title,
                          style: TextStyle(fontSize: 15.0, color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Icon(
                                Icons.bookmark,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
    );
  }
}
