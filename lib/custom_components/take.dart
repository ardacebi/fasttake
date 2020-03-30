import 'package:flutter/material.dart';

class TakeCard extends StatelessWidget {
  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Delete take?"),
            actions: <Widget>[
              FlatButton(
                child: const Text('Cancel'),
                onPressed: () {},
              ),
              FlatButton(
                child: const Text('Delete'),
                onPressed: () {},
              ),
            ],
          );
        });
  }

  TakeCard({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[500],
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                title: Text(
                  'This mind-blowing idea just came up to my mind while showering: an app that...',
                  style: TextStyle(fontFamily: 'JosefinSans'),
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  PopupMenuButton<String>(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.grey[500],
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10)),
                      tooltip: "More options",
                      onSelected: choiceAction,
                      itemBuilder: (BuildContext context) {
                        return Constants.choices.map((String choice) {
                          return PopupMenuItem<String>(
                            value: choice,
                            child: Text(choice),
                          );
                        }).toList();
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Constants {
  static const String Delete = 'delete';
  static const String Pin = 'pin';

  static const List<String> choices = <String>[
    Delete,
    Pin,
  ];
}

void choiceAction(String choice) {
  if (choice == Constants.Delete) {
    // createAlertDialog(context);
  }

  if (choice == Constants.Pin) {}
}
