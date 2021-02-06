import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key key,
  }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        child: Stack(
          children: [
            Center(child: Text("Map API")),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SpeedDial(
                animatedIcon: AnimatedIcons.menu_close,
                animatedIconTheme: IconThemeData(size: 22.0),
                onOpen: () => print('OPENING DIAL'),
                onClose: () => print('DIAL CLOSED'),
                visible: true,
                curve: Curves.bounceIn,
                children: [
                  SpeedDialChild(
                    child: Icon(Icons.directions_car),
                    backgroundColor: Colors.deepOrange,
                    onTap: () async => {await launch("tel:101")},
                    label: 'Fire Department',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                    labelBackgroundColor: Colors.deepOrangeAccent,
                  ),
                  SpeedDialChild(
                    child: Icon(Icons.local_hospital, color: Colors.white),
                    backgroundColor: Colors.green,
                    onTap: () async => {await launch("tel:102")},
                    label: 'Ambulance',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                    labelBackgroundColor: Colors.green,
                  ),
                  SpeedDialChild(
                    child: Icon(Icons.security, color: Colors.white),
                    backgroundColor: Colors.brown[300],
                    onTap: () async => {await launch("tel:100")},
                    label: 'Police',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                    labelBackgroundColor: Colors.brown[300],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
