import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class NewTakeRoute extends StatefulWidget {
  @override
  _NewTakeRouteState createState() => _NewTakeRouteState();
}

class _NewTakeRouteState extends State<NewTakeRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
         leading: new IconButton(
            icon: new Icon(SimpleLineIcons.arrow_left, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        title: new Text('new take',
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30.0)),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom:20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'subject',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom:20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "what's your take?",
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom:10.0),
                child: OutlineButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime.now(), onChanged: (date) {
                    print('change $date');
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                child: Text(
                  'Set reminder (optional)',
                ),
              ),
              ),
              
              RaisedButton(
                child: Text("Save take"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
