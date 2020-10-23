import 'package:flutter/material.dart';
import 'package:smkidn_app/view/home_siswa.dart';
import 'package:smkidn_app/view/setup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMK IDN',
      initialRoute: SetupScreen.page,
      routes: {
        HomeSiswaScreen.page: (context) => HomeSiswaScreen(),
        SetupScreen.page: (context) => SetupScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
