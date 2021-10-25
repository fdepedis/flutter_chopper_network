import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chopper_network/models/popular.dart';

class DetailScreen extends StatelessWidget {
  final Popular popular;
  final int index;

  DetailScreen({Key key, @required this.popular, @required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Film Details"),
      ),
      body: ListView(children: <Widget>[
        Expanded(
          child: Container(
            width: 500,
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      IMAGE_URL + popular.results[index].backdropPath),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        /*Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(popular.results[index].overview),
      ),*/
      ]),
    );
  }

  static const String IMAGE_URL = "https://image.tmdb.org/t/p/w500/";
}
