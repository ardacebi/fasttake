import 'package:fasttake/custom_widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:uuid/uuid.dart';

class SettingsItemFeedback extends StatefulWidget {
  @override
  _SettingsItemFeedbackState createState() => _SettingsItemFeedbackState();
}

var uuid = Uuid();

class _SettingsItemFeedbackState extends State<SettingsItemFeedback> {
  final fb = FirebaseDatabase.instance;
  final feedbackFieldController = TextEditingController();
  final feedback = "feedback/" + uuid.v1();
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    Future<void> _triggerDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Feedback Submitted'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Your feedback has been submitted.'),
                  Text('Thank you for your help.'),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('DISMISS'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    final ref = fb.reference();
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
              child: Text(translate('settings_feedback.items.description1'))),
          Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Text(translate('settings_feedback.items.description2'))),
          Padding(
            padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: TextField(
                controller: feedbackFieldController,
                maxLines: null,
                minLines: 3,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  prefixIcon: Icon(SimpleLineIcons.info),
                  border: OutlineInputBorder(
                    borderSide: new BorderSide(width: 2),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(12.0),
                        ),
                  ),
                  labelText: translate('settings_feedback.items.your_thoughts'),
                  errorText: _validate ? translate('settings_feedback.items.field_empty_error') : null,
                ),
                
              ),
            ),
          ),
          
          /*new Padding(
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
            ),*/
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column( 
               children: <Widget>[
            RaisedButton(
              onPressed: () {
                  setState(() {
                    feedbackFieldController.text.isEmpty
                        ? _validate = true
                        : _validate = false;
                  });
                  if (_validate == false) {
                    ref.child(feedback).set(feedbackFieldController.text);
                    Navigator.pop(context);
                    _triggerDialog();
                  }
                },
            ),
          ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    feedbackFieldController.dispose();
    super.dispose();
  }
}
