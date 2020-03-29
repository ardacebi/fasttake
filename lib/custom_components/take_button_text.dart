import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';

class TakeButtonText extends StatelessWidget {
  TakeButtonText({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5.0),
      child: FlatButton(
        color: Colors.grey[300],
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Colors.grey[800], width: 1, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(35.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            const Icon(SFSymbols.text_badge_plus, size: 70.0),
           
          ],
        ),
      ),
      onPressed: onPressed,
    ),
    );
      
    
  }
}
