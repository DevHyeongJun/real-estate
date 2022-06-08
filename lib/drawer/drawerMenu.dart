import 'package:flutter/material.dart';

import '../route/quoteRoute.dart';
import '../route/watchlistRoute.dart';

//drawer 객체 클래스....그냥 만들어봤다.
class DrawerMenuObject {
  final String title;
  final Function onTap;
  //set
  DrawerMenuObject(this.title, this.onTap);

  //get
  String getTitle() => title;
  Function getOnTap() => onTap;
}

/**
 * drawerMenu 초기 값 셋팅
 */
List<DrawerMenuObject> drawerMenuList = <DrawerMenuObject>[
  DrawerMenuObject("프로필할까말까", (){}),
  DrawerMenuObject("나의 관심 리스트", (context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WatchlistRoute())
    );
  }),
  DrawerMenuObject("주변 시세 현황", (context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => QuoteRoute())
    );
  }),
  DrawerMenuObject("닫기", (context){ Navigator.pop(context); })
];

ListTile DrawerMenuTile(BuildContext context, DrawerMenuObject obj){
  return ListTile(
    title: Text(obj.getTitle()),
    onTap: (){obj.onTap(context);}
  );
}

class DrawerMenu extends StatelessWidget {

  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: drawerMenuList.length,
        itemBuilder: (BuildContext context, int index) {
          return DrawerMenuTile(context, drawerMenuList[index]);
        },
        separatorBuilder: (context, index) {
          if (index == 0) return SizedBox.square();
          return const Divider();
        },
      ),
    );
  }
}
