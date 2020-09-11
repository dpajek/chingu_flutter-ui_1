import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:chingu_flutter/datadefinition.dart';
import 'package:chingu_flutter/detailspage.dart';


class AllArticlesPage extends StatelessWidget {

  AllArticlesPage({Key key, @required this.articles, @required this.context})
      : super(key: key);

  final List<Article> articles;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text("All Articles"),
            ),
            body: _buildAllArticlesPage(),
          );
  }

  Widget _buildAllArticlesPage() {
    return ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: articles.length,
        itemBuilder: (context, i) {

          return _buildRow(articles[i]);
        });
  }

  Widget _buildRow(Article article) {
    return Container(
      height: 60,
      child: ListTile(
        title: Text(
          article.title,
          //style: _biggerFont,
        ),
        leading: CircleAvatar(
          backgroundImage: AssetImage(article.pic),
          radius: 20,
        ),

        //Icon(Icons.favorite, ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return DetailsPage(article: article,);
              },
            ),
          );
        },
      ),
    );
  }

}
