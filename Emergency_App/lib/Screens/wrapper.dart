import 'package:alert_iothinc/Screens/Authenticate/authenticate.dart';
import 'package:alert_iothinc/Screens/Home/home.dart';
import 'package:alert_iothinc/Services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // either home or authenticate
    final user = Provider.of<User>(context);
    print(user);
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
