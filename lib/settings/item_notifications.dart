import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SettingsItemNotifications extends StatefulWidget {
  @override
  _SettingsItemNotificationsState createState() =>
      _SettingsItemNotificationsState();
}

class _SettingsItemNotificationsState extends State<SettingsItemNotifications> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(SimpleLineIcons.arrow_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                print(isSwitched);
              });
            },
            activeTrackColor: Colors.grey,
            activeColor: Colors.grey[900],
          ),
        ],
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "notifications",
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
            leading: Icon(SimpleLineIcons.clock),
            title: Text('take reminders',
            ),
            trailing: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                print(isSwitched);
              });
            },
            activeTrackColor: Colors.grey,
            activeColor: Colors.grey[900],
          ),
            onTap: () {},
          ),
         ListTile(
            leading: Icon(SimpleLineIcons.bulb),
            title: Text('regular reminding of your ideas',
                ),
            trailing: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                print(isSwitched);
              });
            },
            activeTrackColor: Colors.grey,
            activeColor: Colors.grey[900],
          ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.cloud_download),
            title: Text('app updates',
               ),
            trailing: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                print(isSwitched);
              });
            },
            activeTrackColor: Colors.grey,
            activeColor: Colors.grey[900],
          ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.paper_plane),
            title: Text('tips & tricks',
               ),
            trailing: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                print(isSwitched);
              });
            },
            activeTrackColor: Colors.grey,
            activeColor: Colors.grey[900],
          ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
