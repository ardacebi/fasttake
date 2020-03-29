import 'package:flutter/material.dart';

class FeedbackRoute extends StatefulWidget {
  @override
  _FeedbackRouteState createState() => _FeedbackRouteState();
}

class _FeedbackRouteState extends State<FeedbackRoute> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(

      children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 60.0),
                child: Text(
                  'settings',
                  style: TextStyle(fontFamily: 'JosefinSans', fontSize: 50),
                ),
              ),
      ],
      ),
      
    );
  }
}