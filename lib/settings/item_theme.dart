import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SettingsItemTheme extends StatefulWidget {
  @override
  _SettingsItemThemeState createState() => _SettingsItemThemeState();
}

class _SettingsItemThemeState extends State<SettingsItemTheme> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(SimpleLineIcons.arrow_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "theme",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30.0),
            ),
            GestureDetector(
              child: Text('settings',
                  style:
                      TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0)),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          ListTile(
            leading: Icon(SimpleLineIcons.settings),
            title: Text(
              'auto (system)',
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.menu),
            title: Text(
              'dark',
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.menu),
            title: Text(
              'light',
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
