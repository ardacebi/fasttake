import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SettingsRoute extends StatefulWidget {
  @override
  _SettingsRouteState createState() => _SettingsRouteState();
}

class _SettingsRouteState extends State<SettingsRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          leading: new IconButton(
            icon: new Icon(SimpleLineIcons.arrow_left, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          centerTitle: true,
          title: new Text('settings',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 30.0,
                  fontFamily: 'JosefinSans')),
          actions: <Widget>[
          ]),
      body: new ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications',
                  style: TextStyle(fontFamily: 'JosefinSans')),
              trailing: Icon(SimpleLineIcons.arrow_right),
              subtitle: Text('Manage your push notification settings',
                  style: TextStyle(fontFamily: 'JosefinSans')),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications',
                  style: TextStyle(fontFamily: 'JosefinSans')),
              trailing: Icon(SimpleLineIcons.arrow_right),
              subtitle: Text('Manage your push notification settings',
                  style: TextStyle(fontFamily: 'JosefinSans')),
              onTap: () {},
            ),
          ],
        ).toList(),
      ),
    );
  }
}
