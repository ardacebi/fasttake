import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';

class TakeButton extends StatelessWidget {
  TakeButton({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.grey[300],
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
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
            Text(
              "New take",
              maxLines: 1,
              style: TextStyle(
                  fontFamily: 'JosefinSans',
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      
    );
  }
}
