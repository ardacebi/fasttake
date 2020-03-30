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
          centerTitle: true,
          title: new Text('settings',
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30.0, fontFamily: 'JosefinSans')),
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
              title: Text('Notifications', style: TextStyle(fontFamily: 'JosefinSans')),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle: Text('Manage your push notification settings', style: TextStyle(fontFamily: 'JosefinSans')),
              onTap: () {},
            ),
          ],
        ).toList(),
      ),
    );
  }
}
