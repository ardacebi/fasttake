import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
 
class fastButton extends StatelessWidget {
  fastButton(Text text, {@required this.onPressed});
  final GestureTapCallback onPressed;
 
  @override
  Widget build(BuildContext context) {
     return RawMaterialButton(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            SizedBox(
              height: 30.0,
            ),
            
            SizedBox(
              width: 10.0,
            ),
                
          ],
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}