import 'package:flutter/material.dart';
import 'package:note_app/utils/app_colors.dart';
import 'package:sizer/sizer.dart';

import '../widgets/reusable_widgets/alert_dialog.dart';
import '../widgets/reusable_widgets/note_card.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  _fab(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => MyAlertDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        title: Text('Notes'),
        actions: [IconButton(onPressed: () {
          ///TODO: make select notes button
        }, icon: Icon(Icons.checklist))],
      ),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          itemBuilder: (context, index) => NoteCard(),
          itemCount: 3),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _fab(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
