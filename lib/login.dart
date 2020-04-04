import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';

class LoginRoute extends StatefulWidget {
  @override
  _LoginRouteState createState() => _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 200.0, bottom: 20.0),
                child: Text(
                  "fasttake",
                  style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.w200),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Form(
                  child: new Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 20.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(SimpleLineIcons.user),
                            border: OutlineInputBorder(),
                            labelText: translate('login.username'),
                          ),
                        ),
                      ),
                      Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(SimpleLineIcons.key),
                            border: OutlineInputBorder(),
                            labelText: translate('login.password'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: ConstrainedBox(
                          constraints:
                              const BoxConstraints(minWidth: double.infinity),
                          child: new OutlineButton(
                            child: Text(
                              translate('login.login'),
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 0.0),
                        child: ConstrainedBox(
                          constraints:
                              const BoxConstraints(minWidth: double.infinity),
                          child: new RaisedButton(
                            child: Text(
                              translate('login.signup'),
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: new FlatButton(
                          child: Text(
                            translate('login.forgotpass'),
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
