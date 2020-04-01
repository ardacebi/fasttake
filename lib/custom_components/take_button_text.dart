import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';

class TakeButtonText extends StatelessWidget {
  TakeButtonText({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5.0),
      child: FlatButton(
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Colors.grey[800], width: 1, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(35.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            const Icon(SimpleLineIcons.note, size: 50.0),
           
          ],
        ),
      ),
      onPressed: onPressed,
    ),
    );
      
    
  }
}
