import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hr_system/Screen/login.dart';

void main() {
  runApp(HRSystem());
}

class HRSystem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      theme: Theme.of(context).copyWith(
        appBarTheme:
            Theme.of(context).appBarTheme.copyWith(brightness: Brightness.dark),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
