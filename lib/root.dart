import 'package:fasttake/home.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'auth.dart';

class RootRoute extends StatefulWidget {
  RootRoute({this.auth});
  final BaseAuth auth;
  @override
  State<StatefulWidget> createState() => _RootRouteState();
}

enum AuthStatus { notSignedIn, signedIn }

class _RootRouteState extends State<RootRoute> {
  AuthStatus authStatus = AuthStatus.notSignedIn;

  @override
  initState() {
    super.initState();
    widget.auth.currentUser().then((userId) {
      setState(() {
        authStatus =
            userId == null ? AuthStatus.notSignedIn : AuthStatus.signedIn;
      });
    });
  }

  void _signedIn() {
    setState(() {
      authStatus = AuthStatus.signedIn;
    });
  }

  void _signedOut() {
    setState(() {
      authStatus = AuthStatus.notSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (authStatus) {
      case AuthStatus.notSignedIn:
        return new LoginRoute(
          auth: widget.auth,
          onSignedIn: _signedIn,
        );
      case AuthStatus.signedIn:
        return new HomeRoute(
          auth: widget.auth,
          onSignedOut: _signedOut,
        );
    }
    return new LoginRoute(auth: widget.auth);
  }
}
