import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class NewTakeRoute extends StatefulWidget {
  @override
  _NewTakeRouteState createState() => _NewTakeRouteState();
}

class _NewTakeRouteState extends State<NewTakeRoute> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(

      children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 60.0),
                child: Text(
                  'new take',
                  style: TextStyle(fontFamily: 'JosefinSans', fontSize: 50),
                ),
              ),
      ],
      ),
      
    );
  }
}