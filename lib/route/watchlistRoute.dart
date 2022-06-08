import 'package:flutter/material.dart';

import '../widget/ui/list/basic/listView.dart';
import '../drawer/drawerMenu.dart';

class WatchlistRoute extends StatefulWidget {
  const WatchlistRoute({Key? key}) : super(key: key);

  @override
  State<WatchlistRoute> createState() => _WatchlistRouteState();
}

class _WatchlistRouteState extends State<WatchlistRoute> {
  var favList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('나의 관심 리스트'),
        centerTitle: true,
      ),
      drawer: DrawerMenu(),
      body: BasicListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),

    );
  }
}