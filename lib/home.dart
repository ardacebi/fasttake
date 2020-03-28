import 'package:flutter/material.dart';
import 'custom_components/search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.teal, Colors.white])),
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
                  style: TextStyle(fontFamily: 'JosefinSans', fontSize: 50),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                child: TextField(
                  decoration: customSearch,
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                height: 100,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'This is an instant take',
                          ),
                          subtitle: Text(
                              'The base of my idea is to create an application that...'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                height: 100,
                child: Card(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'This is an instant take',
                          ),
                          subtitle: Text(
                              'The base of my idea is to create an application that...'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                height: 100,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'This is an instant take',
                          ),
                          subtitle: Text(
                              'The base of my idea is to create an application that...'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                height: 100,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'This is an instant take',
                          ),
                          subtitle: Text(
                              'The base of my idea is to create an application that...'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                height: 100,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'This is an instant take',
                          ),
                          subtitle: Text(
                              'The base of my idea is to create an application that...'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                height: 100,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'This is an instant take',
                          ),
                          subtitle: Text(
                              'The base of my idea is to create an application that...'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                height: 100,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'This is an instant take',
                          ),
                          subtitle: Text(
                              'The base of my idea is to create an application that...'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                height: 100,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'This is an instant take',
                          ),
                          subtitle: Text(
                              'The base of my idea is to create an application that...'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                height: 100,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'This is an instant take',
                          ),
                          subtitle: Text(
                              'The base of my idea is to create an application that...'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                height: 100,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'This is an instant take',
                          ),
                          subtitle: Text(
                              'The base of my idea is to create an application that...'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                height: 100,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'This is an instant take',
                          ),
                          subtitle: Text(
                              'The base of my idea is to create an application that...'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                height: 100,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'This is an instant take',
                          ),
                          subtitle: Text(
                              'The base of my idea is to create an application that...'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                height: 100,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'This is an instant take',
                          ),
                          subtitle: Text(
                              'The base of my idea is to create an application that...'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                height: 100,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'This is an instant take',
                          ),
                          subtitle: Text(
                              'The base of my idea is to create an application that...'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                height: 100,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            'This is an instant take',
                          ),
                          subtitle: Text(
                              'The base of my idea is to create an application that...'),
                        ),
                      ],
                    ),
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
