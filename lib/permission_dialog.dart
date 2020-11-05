import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionDenied extends StatelessWidget {
  final String title;

  const PermissionDenied({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
      title: Text(
        "$title Permission Denied",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      backgroundColor: Colors.white,
      content: Text(
        "You have permanently denied Call permission to this app. Please grant the permission"
        " in the App Settings",
        style: TextStyle(fontSize: 15),
      ),
      actions: <Widget>[
        RaisedButton(
          shape: kRoundButtonShape,
          onPressed: () {
            Navigator.of(context).pop();
            openAppSettings();
          },
          color: Colors.blueAccent,
          child: Text(
            'Go to App Settings',
            style: TextStyle(color: Colors.white),
          ),
        ),
        RaisedButton(
          shape: kRoundButtonShape,
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.blueAccent,
          child: Text(
            '  Cancel  ',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
