import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class FeedbackRoute extends StatefulWidget {
  @override
  _FeedbackRouteState createState() => _FeedbackRouteState();
}

class _FeedbackRouteState extends State<FeedbackRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: new Text('feedback',
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30.0)),
      ),
      body: SingleChildScrollView(
        
       
      ),
    );
  }
}
