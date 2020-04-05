import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'auth.dart';
import 'root.dart';

void main() async {
  var delegate = await LocalizationDelegate.create(
      fallbackLocale: 'en_US', supportedLocales: ['en_US', 'tr', 'it']);

  runApp(LocalizedApp(delegate, MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localizationDelegate = LocalizedApp.of(context).delegate;

    return LocalizationProvider(
      state: LocalizationProvider.of(context).state,
      child: MaterialApp(
          title: 'fasttake',
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            localizationDelegate
          ],
          supportedLocales: localizationDelegate.supportedLocales,
          locale: localizationDelegate.currentLocale,
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            primarySwatch: Colors.grey,
            accentColor: Colors.grey,
            cardColor: Colors.grey[850],
            fontFamily: 'JosefinSans',
          ),
          theme: ThemeData(
            splashColor: Colors.transparent,
            cardColor: Colors.grey[50],
            highlightColor: Colors.transparent,
            primarySwatch: Colors.grey,
            fontFamily: 'JosefinSans',
          ),
          home: new RootRoute(auth: new Auth())),
    );
  }
}

class MainRoute extends StatefulWidget {
  MainRoute({Key key, this.auth, this.onSignedOut, this.title})
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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MainRouteState createState() => _MainRouteState();
}

class _MainRouteState extends State<MainRoute> {
  @override
  Widget build(BuildContext context) {
    return null;
  }
}
