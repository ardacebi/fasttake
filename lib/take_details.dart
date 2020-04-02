import 'package:flutter/material.dart';

import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';

class TakeDetailsRoute extends StatefulWidget {
  @override
  _TakeDetailsRouteState createState() => _TakeDetailsRouteState();
}

class _TakeDetailsRouteState extends State<TakeDetailsRoute> {
  bool isSwitched = false;

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
        title: new Text(translate('new_take_text_details.title'),
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30.0)),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                child: TextField(
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    prefixIcon: Icon(SimpleLineIcons.info),
                    border: OutlineInputBorder(),
                    labelText: translate('new_take_text_details.subject'),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(SimpleLineIcons.tag),
                    border: OutlineInputBorder(),
                    labelText: translate('new_take_text_details.tags'),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 5.0),
                    child: Text(
                      translate('new_take_text_details.reminders'),
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'JosefinSans',
                      ),
                    ),
                  ),
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
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 5.0),
                      child: OutlineButton.icon(
                        onPressed: () {
                          Future<DateTime> selectedDate = showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2030),
                          );
                        },
                        label:
                            Text(translate('new_take_text_details.set_date')),
                        icon: Icon(SimpleLineIcons.calendar),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 5.0),
                      child: OutlineButton.icon(
                        onPressed: () {
                          Future<TimeOfDay> selectedTime = showTimePicker(
                            initialTime: TimeOfDay.now(),
                            context: context,
                          );
                        },
                        label:
                            Text(translate('new_take_text_details.set_time')),
                        icon: Icon(SimpleLineIcons.clock),
                      ),
                    ),
                  ),
                ],
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: RaisedButton(
                  child: Text(translate('new_take_text_details.save_take')),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
