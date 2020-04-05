import 'package:fasttake/settings/item_account.dart';
import 'package:fasttake/settings/item_focusmode.dart';
import 'package:fasttake/settings/item_security.dart';
import 'package:fasttake/settings/item_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fasttake/settings/item_notifications.dart';
import 'package:fasttake/settings/item_feedback.dart';
import 'package:package_info/package_info.dart';
import 'package:share/share.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:platform_action_sheet/platform_action_sheet.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fasttake/auth.dart';

class SettingsRoute extends StatefulWidget {
  SettingsRoute({Key key, this.auth, this.onSignedOut, this.title})
      : super(key: key);
  final BaseAuth auth;
  final VoidCallback onSignedOut;

  void _signOut() async {
    try {
      await auth.signOut();
      onSignedOut();
    } catch (e) {
      print(e);
    }
  }

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
          title: new Text((translate('settings.title')),
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 30.0,
              )),
          actions: <Widget>[]),
      body: new Column(
        children: <Widget>[
         /* ListTile(
            leading: Icon(SimpleLineIcons.user),
            title: Text(
              (translate('settings.items.account')),
            ),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsItemAccount()),
              );
            },
          ), */
        /*  ListTile(
            leading: Icon(SimpleLineIcons.bell),
            title: Text(
              (translate('settings.items.notifications')),
            ),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SettingsItemNotifications()),
              );
            },
          ), */
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
        /*  ListTile(
            leading: Icon(SimpleLineIcons.shield),
            title: Text((translate('settings.items.security'))),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsItemSecurity()),
              );
            },
          ), */
         /* ListTile(
            leading: Icon(SimpleLineIcons.magic_wand),
            title: Text((translate('settings.items.theme'))),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsItemTheme()),
              );
            },
          ), */
          ListTile(
            leading: Icon(SimpleLineIcons.globe),
            title: Text((translate('settings.items.language'))),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              PlatformActionSheet().displaySheet(
                  context: context,
                  title: Row(
                    children: <Widget>[],
                  ),
                  message: Text(translate('settings_language.subtitle')),
                  actions: [
                    ActionSheetAction(
                      text: 'English',
                      onPressed: () {
                        changeLocale(context, 'en_US');
                        Navigator.pop(context);
                      },
                      hasArrow: true,
                    ),
                    ActionSheetAction(
                      text: 'Italiano',
                      onPressed: () {
                        changeLocale(context, 'it');
                        Navigator.pop(context);
                      },
                      hasArrow: true,
                    ),
                    ActionSheetAction(
                      text: 'Türkçe',
                      onPressed: () {
                        changeLocale(context, 'tr');
                        Navigator.pop(context);
                      },
                      hasArrow: true,
                    ),
                    ActionSheetAction(
                      text: translate('settings_language.items.cancel'),
                      onPressed: () => Navigator.pop(context),
                      isCancel: true,
                      defaultAction: true,
                    )
                  ]);
            },
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.support),
            title: Text((translate('settings.items.feedback'))),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsItemFeedback()),
              );
            },
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.people),
            title: Text((translate('settings.items.share_with_friends'))),
            trailing: Icon(SimpleLineIcons.arrow_right),
            onTap: () {
              Share.share(translate('settings_share_with_friends.message'));
            },
          ),
          ListTile(
            leading: Icon(SimpleLineIcons.logout),
            title: Text((translate('settings.items.sign_out'))),
            trailing: Icon(SimpleLineIcons.arrow_right),
            
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 30.0),
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


