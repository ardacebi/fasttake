import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class NewTakePage extends StatefulWidget {
  @override
  _NewTakePageState createState() => _NewTakePageState();
}

class _NewTakePageState extends State<NewTakePage> {
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