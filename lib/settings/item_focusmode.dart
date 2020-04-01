import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SettingsItemFocusedMode extends StatefulWidget {
  @override
  _SettingsItemFocusedModeState createState() => _SettingsItemFocusedModeState();
}

class _SettingsItemFocusedModeState extends State<SettingsItemFocusedMode> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(SimpleLineIcons.arrow_left),
            onPressed: () => Navigator.of(context).pop(),
          ),
           actions: <Widget>[
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                print(isSwitched);
              });
            },
            activeTrackColor: Colors.grey,
            activeColor: Colors.grey[900],
          ),
        ],
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "focus mode", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30.0),
            ),
            GestureDetector(
              child: Text('settings', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0)),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children:<Widget>[
          Padding(
            padding: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
            child: Text("focus mode disables extra clutter features like pinning and tags to give you a more focused space on your ideas and takes.")
          ),
          
        ],
       
      ),
    );
  }
}
