import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class SettingsItemNotifications extends StatefulWidget {
  @override
  _SettingsItemNotificationsState createState() => _SettingsItemNotificationsState();
}

class _SettingsItemNotificationsState extends State<SettingsItemNotifications> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "notifications", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30.0),
            ),
            GestureDetector(
              child: Text('settings', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0)),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        
       
      ),
    );
  }
}
