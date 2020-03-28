import 'package:flutter/material.dart';

enum WhyFarther { delete, pin }

int _selection = 0;

class TakeCard extends StatelessWidget {
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
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                title: Text(
                  'This is an instant take',
                ),
                subtitle: Text(
                    'The base of my idea is to create an application that...'),
              ),
              ButtonBar(
                children: <Widget>[
                  PopupMenuButton<WhyFarther>(
                    onSelected: (WhyFarther result) {},
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<WhyFarther>>[
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.delete,
                        child: Text('Delete'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.pin,
                        child: Text('Pin'),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
