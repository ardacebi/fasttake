import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:ui';

class SettingsButton extends StatelessWidget {
  SettingsButton({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[300],
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Colors.grey[800], width: 1, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(40.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 12.0),
              
            ),
            SizedBox(
              width: 10.0,
            ),
            Text("settings", style: TextStyle(fontSize: 35.0, fontFamily: 'JosefinSans', fontWeight: FontWeight.w300)),
          ],
        ),
      ),
      onPressed: onPressed,
      
    );
  }
}