import 'package:flutter/material.dart';


class ConfirmDialog extends StatefulWidget {
  ConfirmDialog({Key? key}) : super(key: key);

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
                TextButton( child : Text('취소'), onPressed : () {
                  Navigator.pop(context);
                }),
                TextButton( child : Text('완료'), onPressed : () {

                })
              ]
          )
        )
    );
  }
}
