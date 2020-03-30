import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class TakeButtonVoice extends StatelessWidget {
  TakeButtonVoice({@required this.onPressed});
  final GestureTapCallback onPressed;

 @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5.0),
    child: FlatButton(
      color: Colors.grey[300],
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Colors.grey[800], width: 1, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(35.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            const Icon(SimpleLineIcons.microphone, size: 50.0),
           
          ],
        ),
      ),
      onPressed: onPressed,
    ),
    );
  }
}