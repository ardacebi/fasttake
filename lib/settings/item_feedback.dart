import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';

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
                  translate('settings_feedback.items.description1'))),
          Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Text(
                  translate('settings_feedback.items.description2'))),
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
                  labelText: translate('settings_feedback.items.your_thoughts'),
                ),
              ),
            ),
          ),
          new Padding(
              padding: new EdgeInsets.only(top: 0.0, bottom:15.0, left:60.0, right:60.0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: new OutlineButton.icon(
                  label: Text(translate('settings_feedback.items.upload_attachments')),
                  icon: Icon(Icons.attach_file),
                  onPressed: () {
                    FilePicker.getMultiFilePath();
                  },
                ),
              ),
            ),
          Padding(
            padding: EdgeInsets.only(left:20.0, right:20.0),
            child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: RaisedButton(
                  child: Text(translate('settings_feedback.items.send_feedback')),
                  onPressed: () {},
                ),
              ),
          ),
          
        ],
      ),
    );
  }
}
