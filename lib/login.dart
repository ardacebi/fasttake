import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'auth.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginRoute extends StatefulWidget {
  LoginRoute({this.auth, this.onSignedIn});
  final BaseAuth auth;
  final VoidCallback onSignedIn;

  @override
  _LoginRouteState createState() => _LoginRouteState();
}

enum Formtype { login, register }

class _LoginRouteState extends State<LoginRoute> {
  final formKey = new GlobalKey<FormState>();

  String _email;
  String _password;
  Formtype _formType = Formtype.login;

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        if (_formType == Formtype.login) {
          String userId =
              await widget.auth.signInWithEmailAndPassword(_email, _password);
          print('Signed in: $userId');
        } else {
          String userId = await widget.auth
              .createUserWithEmailAndPassword(_email, _password);
          print('Registered: $userId');
        }
        widget.onSignedIn();
      } catch (e) {
        print('Error: $e');
      }
    }
  }

  void moveToRegister() {
    formKey.currentState.reset();
    setState(() {
      _formType = Formtype.register;
    });
  }

  void moveToLogin() {
    formKey.currentState.reset();
    setState(() {
      _formType = Formtype.login;
    });
  }

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
                margin: EdgeInsets.only(top: 40.0, bottom: 20.0),
                child: Text(
                  "fasttake",
                  style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.w200),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Form(
                  key: formKey,
                  child: new Column(
                    children: buildInputs() + buildSubmitButtons(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  List<Widget> buildInputs() {
    if (_formType == Formtype.login) {
      return [
        Container(
          margin: EdgeInsets.only(top: 0.0, bottom: 20.0),
          child: Text(
            "Log in",
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w200),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          child: TextFormField(
            validator: (value) =>
                value.isEmpty ? 'Email can\'t be empty' : null,
            onSaved: (value) => _email = value,
            decoration: InputDecoration(
              prefixIcon: Icon(SimpleLineIcons.user),
              border: OutlineInputBorder(),
              labelText: translate('login.email'),
            ),
          ),
        ),
        Container(
          child: TextFormField(
            validator: (value) =>
                value.isEmpty ? 'Password can\'t be empty' : null,
            onSaved: (value) => _password = value,
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(SimpleLineIcons.key),
              border: OutlineInputBorder(),
              labelText: translate('login.password'),
            ),
          ),
        ),
      ];
    } else {
      return [
        Container(
          margin: EdgeInsets.only(top: 0.0, bottom: 20.0),
          child: Text(
            "Sign up",
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w200),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          child: TextFormField(
            validator: (value) =>
                value.isEmpty ? 'Email can\'t be empty' : null,
            onSaved: (value) => _email = value,
            decoration: InputDecoration(
              prefixIcon: Icon(SimpleLineIcons.user),
              border: OutlineInputBorder(),
              labelText: translate('login.email'),
            ),
          ),
        ),
        Container(
          child: TextFormField(
            validator: (value) =>
                value.isEmpty ? 'Password can\'t be empty' : null,
            onSaved: (value) => _password = value,
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(SimpleLineIcons.key),
              border: OutlineInputBorder(),
              labelText: translate('login.password'),
            ),
          ),
        ),
      ];
    }
  }

  List<Widget> buildSubmitButtons() {
    if (_formType == Formtype.login) {
      return [
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: new RaisedButton(
              child: Text(
                translate('login.login'),
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              onPressed: validateAndSubmit,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 0.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: new OutlineButton(
              child: Text(
                translate('login.signup_long'),
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              onPressed: moveToRegister,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5.0),
          child: new FlatButton(
            child: Text(
              translate('login.forgotpass'),
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Container(
            child: Padding(
              padding: EdgeInsets.only(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  horizontalLine(),
                  Text("or", style: CustomTextStyle.body(context)),
                  horizontalLine()
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Column(
            children: <Widget>[
              Container(
                  child: SignInButton(
                Buttons.Google,
                onPressed: () {},
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: SignInButton(
                    Buttons.Facebook,
                    mini: true,
                    onPressed: () {},
                  )),
                  Container(
                      child: SignInButton(
                    Buttons.Twitter,
                    mini: true,
                    onPressed: () {},
                  )),
                  Container(
                      child: SignInButton(
                    Buttons.Apple,
                    mini: true,
                    onPressed: () {},
                  )),
                ],
              ),
            ],
          ),
        ),
      ];
    } else {
      return [
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: new RaisedButton(
              child: Text(
                translate('login.signup'),
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              onPressed: validateAndSubmit,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 0.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: new OutlineButton(
              child: Text(
                translate('login.login_long'),
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              onPressed: moveToLogin,
            ),
          ),
        ),
         Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Container(
            child: Padding(
              padding: EdgeInsets.only(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  horizontalLine(),
                  Text("or", style: CustomTextStyle.body(context)),
                  horizontalLine()
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Column(
            children: <Widget>[
              Container(
                  child: SignInButton(
                Buttons.Google,
                onPressed: () {},
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: SignInButton(
                    Buttons.Facebook,
                    mini: true,
                    onPressed: () {},
                  )),
                  Container(
                      child: SignInButton(
                    Buttons.Twitter,
                    mini: true,
                    onPressed: () {},
                  )),
                  Container(
                      child: SignInButton(
                    Buttons.Apple,
                    mini: true,
                    onPressed: () {},
                  )),
                ],
              ),
            ],
          ),
        ),
      ];
    }
  }
}

Widget horizontalLine() => Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: 120,
        height: 1.0,
        color: Colors.grey[600].withOpacity(0.6),
      ),
    );

class CustomTextStyle {
  static TextStyle body(BuildContext context) {
    return Theme.of(context).textTheme.title.copyWith(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey[600]);
  }
}
