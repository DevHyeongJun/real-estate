import 'package:flutter/material.dart';

class BasicListTileWidget extends StatelessWidget {
  const BasicListTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //leading: Icon(Icons.abc_outlined),
      title: Text("대 제목"),
      subtitle: Text("서브 제목"),
      trailing:TileIcon()
    );
  }
}

class TileIcon extends StatelessWidget {
  const TileIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.arrow_right);
  }
}