import 'package:alert_iothinc/Screens/Authenticate/register.dart';
import 'package:alert_iothinc/Screens/Authenticate/sign_in.dart';
import 'package:alert_iothinc/Services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Wrapper(),
          '/signin': (context) => SignIn(),
          '/register': (context) => Register(),
        },
      ),
    );
  }
}
