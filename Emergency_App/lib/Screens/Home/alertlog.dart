import 'package:flutter/material.dart';

class AlertLog extends StatefulWidget {
  const AlertLog({
    Key key,
  }) : super(key: key);
  @override
  _AlertLogState createState() => _AlertLogState();
}

class _AlertLogState extends State<AlertLog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Alert Log"),
      ),
    );
  }
}
