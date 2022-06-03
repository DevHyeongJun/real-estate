import 'package:flutter/material.dart';


class ConfirmDialog extends StatefulWidget {
  ConfirmDialog({Key? key, this.stateTest, required this.notifyParent}) : super(key: key);
  final stateTest;
  final Function() notifyParent;

  @override
  State<ConfirmDialog> createState() => _ConfirmDialogState();
}

class _ConfirmDialogState extends State<ConfirmDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child:SizedBox(
          width:400,
          child : Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton( child : Text('취소' + widget.stateTest.toString()), onPressed : () {
                  Navigator.pop(context);
                }),
                TextButton( child : Text('완료'), onPressed : () {
                  widget.notifyParent();
                })
              ]
          )
        )
    );
  }
}
