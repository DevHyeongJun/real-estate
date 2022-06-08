import 'package:flutter/material.dart';

import '../drawer/drawerMenu.dart';

class QuoteRoute extends StatefulWidget {
  const QuoteRoute({Key? key}) : super(key: key);

  @override
  State<QuoteRoute> createState() => _quoteRouteState();
}

class _quoteRouteState extends State<QuoteRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('주변 시세 현황'),
        centerTitle: true,
      ),
      drawer: DrawerMenu(),
      body: Container(
        child: Text('지도 생성해야지'),
      ),
    );
  }
}