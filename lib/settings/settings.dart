import 'package:fasttake/settings/item_focusmode.dart';
import 'package:fasttake/settings/item_security.dart';
import 'package:fasttake/settings/item_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:fasttake/settings/item_notifications.dart';
import 'package:fasttake/settings/item_feedback.dart';
import 'package:package_info/package_info.dart';
import 'package:share/share.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:platform_action_sheet/platform_action_sheet.dart';

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
            icon: new Icon(SimpleLineIcons.arrow_left),
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
                  )),
          actions: <Widget>[]),
      body: new Column(
        children: <Widget>[
          ListTile(
            leading: Icon(SimpleLineIcons.bell),
            title: Text('notifications',
               ),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: SettingsItemNotifications()));
            },
          ),
        /*  ListTile(
            leading: Icon(SimpleLineIcons.bulb),
            title:
                Text('focus mode'),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: SettingsItemFocusedMode()));
            },
          ), */
          ListTile(
            leading: Icon(SimpleLineIcons.shield),
            title:
                Text('security'),
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
            leading: Icon(SimpleLineIcons.magic_wand),
            title:
                Text('theme'),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: SettingsItemTheme()));
            },
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.support),
            title:
                Text('feedback'),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: SettingsItemFeedback()));
            },
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.globe),
            title:
                Text('language'),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              PlatformActionSheet().displaySheet(
                  context: context,
                  title: Row(
                    children: <Widget>[
                      
                    
                    ],
                  ),
                  message: Text("choose a language to use fasttake with"),
                  actions: [
                    ActionSheetAction(
                      text: "english",
                      onPressed: () => Navigator.pop(context),
                      hasArrow: true,
                    ),
                    ActionSheetAction(
                      text: "turkish",
                      onPressed: () => Navigator.pop(context),
                    ),
                    ActionSheetAction(
                      text: "cancel",
                      onPressed: () => Navigator.pop(context),
                      isCancel: true,
                      defaultAction: true,
                    )
                  ]);
              
            },
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.people),
            title:
                Text('share with friends'),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
             Share.share('check out fasttake, stop forgetting those awesome ideas that come up on your mind!');
            },
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom:30.0),
                  child: Text(
                    _packageInfo.version,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300,
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
