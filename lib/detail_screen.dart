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
        title: Text(popular.results[index].title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(popular.results[index].overview),
      ),
    );
  }
}
