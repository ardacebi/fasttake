import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';

class CustomButton extends StatelessWidget {
  CustomButton({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      elevation: 0,
      fillColor: Colors.grey[300],
      child: Padding(
        padding: EdgeInsets.all(40.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            const Icon(SFSymbols.plus_circle_fill, color: Colors.black87, size:40.0),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "New take",
              maxLines: 1,
              style: TextStyle(fontFamily: 'JosefinSans', fontSize: 40, color: Colors.black, fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0)
    ),
    );
  }
}
