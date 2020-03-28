import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.white,
      splashColor: Colors.blueGrey,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.add,
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "New take",
              maxLines: 1,
              style: TextStyle(color: Colors.black),
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
