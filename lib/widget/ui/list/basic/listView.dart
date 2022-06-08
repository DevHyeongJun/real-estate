import 'package:flutter/material.dart';

import './tile/listTile.dart';

class BasicListView extends StatefulWidget {
  const BasicListView({Key? key}) : super(key: key);

  @override
  State<BasicListView> createState() => _BasicListViewState();
}

class _BasicListViewState extends State<BasicListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        //if (index == 0) return HeaderTile();
        return BasicListTileWidget();
      },
    );

  }
}
