import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyAlertDialog extends StatelessWidget {
  MyAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Note'),
      content: Container(
        width: 100,
        // height: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [TextField()],
        ),
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);

        }, child: Text('Cancel')),
        TextButton(onPressed: (){}, child: Text('OK')),
      ],
    );
  }
}
