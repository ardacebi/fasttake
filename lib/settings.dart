import 'package:flutter/material.dart';

class SettingsRoute extends StatefulWidget {
  @override
  _SettingsRouteState createState() => _SettingsRouteState();
}

class _SettingsRouteState extends State<SettingsRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          title: new Text('Settings',
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30.0)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "Search",
              onPressed: () {},
            ),
          ]),
      body: new ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle: Text('Manage your push notification settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle: Text('Manage your push notification settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle: Text('Manage your push notification settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle: Text('Manage your push notification settings'),
              onTap: () {},
            ),
          ],
        ).toList(),
      ),
    );
  }
}
