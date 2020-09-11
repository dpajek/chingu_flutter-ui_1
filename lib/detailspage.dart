import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:chingu_flutter/datadefinition.dart';


class DetailsPage extends StatelessWidget {

  DetailsPage({Key key, @required this.article})
      : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: _buildDetailsPage(),
    );
  }

  Widget _buildDetailsPage() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: const Alignment(-1, 0.8),
            children: [
              SizedBox(
                height: 300,
                //width: 150,
                child: Image(
                  image: AssetImage(article.pic),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  //height: 100,
                  width: 1000,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                //alignment: Alignment.bottomLeft,
                color: Colors.grey[200].withOpacity(0.7),

                child: Text(
                  article.subtitle,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          article.content,
        ],
      ),
    );
  }
}
