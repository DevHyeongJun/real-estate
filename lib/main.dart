import 'package:flutter/material.dart';

import './route/watchlistRoute.dart';

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
      body : WatchlistRoute()
        // bottomNavigationBar: BottomLayout()
    );
  }
}
