import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SettingsItemFeedback extends StatefulWidget {
  @override
  _SettingsItemFeedbackState createState() => _SettingsItemFeedbackState();
}

class _SettingsItemFeedbackState extends State<SettingsItemFeedback> {
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
        title: Column(
          children: [
            Text(
              "feedback",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30.0),
            ),
            GestureDetector(
              child: Text('settings',
                  style:
                      TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0)),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Text(
                  "from this page, you can give feedback on fasttake for us to improve the app. you can report all kinds of bugs you see on your device or even suggest features you'd like to see in fasttake.")),
          Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Text(
                  "all feedback sent from this page is anonymous and will be used to only improve the fasttake app.")),
          Padding(
            padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: TextField(
                maxLines: null,
                minLines: 3,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  prefixIcon: Icon(SimpleLineIcons.info),
                  border: OutlineInputBorder(),
                  labelText: 'your thoughts',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:20.0, right:20.0),
            child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: RaisedButton(
                  child: Text("Send feedback"),
                  onPressed: () {},
                ),
              ),
          ),
          
        ],
      ),
    );
  }
}
