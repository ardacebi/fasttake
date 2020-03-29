import 'package:fasttake/settings.dart';
import 'package:flutter/material.dart';
import 'custom_components/take_button_text.dart';
import 'custom_components/take_button_voice.dart';
import 'custom_components/settings_button.dart';
import 'custom_components/search.dart';
import 'custom_components/take.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fasttake',
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
        fontFamily: 'JosefinSans',
      ),
      home: MyHomePage(title: 'fasttake'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
                margin: const EdgeInsets.only(top: 60.0),
                child: Text(
                  'fasttake',
                  style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.w200),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    top: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    right: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
                child: Column(
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
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: Text(
                  "new take",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
                ),
              ),
              new Container(
                child: new Column(
                  children: <Widget>[
                    new ConstrainedBox(
                      constraints:
                          const BoxConstraints(minWidth: double.infinity),
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 20.0),
                        child: TakeButtonText(
                          onPressed: () {},
                        ),
                      ),
                    ),
                    new ConstrainedBox(
                      constraints:
                          const BoxConstraints(minWidth: double.infinity),
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 20.0),
                        child: TakeButtonVoice(
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: Container(
                  margin:
                      const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                  child: SettingsButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsRoute()),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
