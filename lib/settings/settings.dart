import 'package:fasttake/settings/item_focusedmode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:fasttake/settings/item_notifications.dart';
import 'package:fasttake/settings/item_feedback.dart';
import 'package:fasttake/settings/item_about.dart';


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
          actions: <Widget>[]),
      body: new ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(SimpleLineIcons.bell),
            title: Text('notifications',
                style: TextStyle(fontFamily: 'JosefinSans')),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              child: SettingsItemNotifications()));},
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.bulb),
            title: Text('focused mode',
                style: TextStyle(fontFamily: 'JosefinSans')),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              child: SettingsItemFocusedMode()));},
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.support),
            title: Text('feedback',
                style: TextStyle(fontFamily: 'JosefinSans')),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              child: SettingsItemFeedback()));},
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.info),
            title: Text('about',
                style: TextStyle(fontFamily: 'JosefinSans')),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              child: SettingsItemAbout()));},
          ),
        ],
      ),
    );
  }
}