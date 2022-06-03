import 'package:flutter/material.dart';

import './layout/top.dart';
import './layout/body.dart';
import './layout/bottom.dart';
import './widget/dialog/confirm.dart';

//앱 실행. java main =
void main() => runApp(
    MaterialApp(
        home: MainApp()
    )
);

class MainApp extends StatefulWidget {
  MainApp({Key? key}) : super(key: key);
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : BodyLayout(),
        bottomNavigationBar: BottomLayout()
    );
  }
}
