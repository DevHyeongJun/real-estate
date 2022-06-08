import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MainMap extends StatefulWidget {
  MainMap({Key? key}) : super(key: key);
  @override
  State<MainMap> createState() => _MainMapState();
}

class _MainMapState extends State<MainMap> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('test')
    );
  }
}
