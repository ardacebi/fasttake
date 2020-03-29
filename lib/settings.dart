import 'package:flutter/material.dart';

class SettingsRoute extends StatefulWidget {
  @override
  _SettingsRouteState createState() => _SettingsRouteState();
}

class _SettingsRouteState extends State<SettingsRoute> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(

      children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 60.0),
                child: Text(
                  'settings',
                  style: TextStyle(fontFamily: 'JosefinSans', fontSize: 50),
                ),
              ),
      ],
      ),
      
    );
  }
}