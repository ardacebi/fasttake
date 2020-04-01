import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:ui';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';

class SettingsButton extends StatelessWidget {
  SettingsButton({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      
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
            Text(translate('home.settings_button.settings_button'), style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w300)),
          ],
        ),
      ),
      onPressed: onPressed,
      
    );
  }
}