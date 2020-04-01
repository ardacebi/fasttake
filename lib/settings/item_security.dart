import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';

class SettingsItemSecurity extends StatefulWidget {
  @override
  _SettingsItemSecurityState createState() => _SettingsItemSecurityState();
}

class _SettingsItemSecurityState extends State<SettingsItemSecurity> {
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
              translate('settings_security.title'),
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30.0),
            ),
            GestureDetector(
              child: Text(translate('settings_security.subtitle'),
                  style:
                      TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0)),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(SimpleLineIcons.lock),
            title:
                Text(translate('settings_security.items.app_lock')),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
