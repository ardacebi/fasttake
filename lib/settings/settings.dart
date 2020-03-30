import 'package:fasttake/settings/item_focusedmode.dart';
import 'package:fasttake/settings/item_security.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:fasttake/settings/item_notifications.dart';
import 'package:fasttake/settings/item_feedback.dart';
import 'package:package_info/package_info.dart';

class SettingsRoute extends StatefulWidget {
  SettingsRoute({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SettingsRouteState createState() => _SettingsRouteState();
}

class _SettingsRouteState extends State<SettingsRoute> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  Widget _infoTile(String title, String subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle ?? 'Not set'),
    );
  }

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
      body: new Column(
        children: <Widget>[
          ListTile(
            leading: Icon(SimpleLineIcons.bell),
            title: Text('notifications',
                style: TextStyle(fontFamily: 'JosefinSans')),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: SettingsItemNotifications()));
            },
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.bulb),
            title:
                Text('focus mode', style: TextStyle(fontFamily: 'JosefinSans')),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: SettingsItemFocusedMode()));
            },
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.shield),
            title:
                Text('security', style: TextStyle(fontFamily: 'JosefinSans')),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: SettingsItemSecurity()));
            },
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.support),
            title:
                Text('feedback', style: TextStyle(fontFamily: 'JosefinSans')),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: SettingsItemFeedback()));
            },
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: MaterialButton(
                onPressed: () => {},
                child: Padding(
                  padding: EdgeInsets.only(bottom:30.0),
                  child: Text(
                    _packageInfo.version,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
