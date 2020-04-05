import 'package:flutter/material.dart';
import 'auth.dart';
import 'package:fasttake/settings/settings.dart';
import 'package:fasttake/take_details.dart';
import 'package:flutter/material.dart';
import 'custom_components/search.dart';
import 'custom_components/take.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fasttake/login.dart';
import 'auth.dart';
import 'root.dart';

class HomeRoute extends StatelessWidget {
   HomeRoute({Key key, this.auth, this.onSignedOut, this.title})
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
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 60.0, left: 0.0),
                child: Text(
                  "fasttake",
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.w200),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: TextField(
                    maxLines: null,
                    minLines: 5,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: translate('home.landing_label'),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 5.0),
                        child: new OutlineButton(
                          child: Text(
                            translate('home.save'),
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TakeDetailsRoute()),
                            );
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 5.0),
                        child: new OutlineButton(
                          child: Text(
                            translate('home.quick_save'),
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    OutlineButton(
                          child: Text(
                            "Sign out",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          onPressed: _signOut
                        ),
                        OutlineButton(
                          child: Text(
                            "Settings",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingsRoute()),
                            );
                          } 
                        ),
                  ],
                ),
                
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 10.0),
                    child: TextField(
                      decoration: customSearch,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 20.0),
                    child: TakeCard(
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 20.0),
                    child: TakeCard(
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 20.0),
                    child: TakeCard(
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 20.0),
                    child: TakeCard(
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}