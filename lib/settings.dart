import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 60.0),
                child: Text(
                  'settings',
                  style: TextStyle(fontFamily: 'JosefinSans', fontSize: 50),
                ),
              ),
      ],
      
    );
  }
}