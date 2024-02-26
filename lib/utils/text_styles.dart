import 'package:flutter/material.dart';
import 'package:note_app/utils/app_colors.dart';
import 'package:sizer/sizer.dart';

class TitleText extends StatelessWidget {
  TitleText(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
          fontStyle: FontStyle.italic,
          color: AppColors.subjectTextColor
      ),
    );
  }
}


class NoteText extends StatelessWidget {
  NoteText(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 3,
      style: TextStyle(
        fontSize: 11.sp,
        overflow: TextOverflow.ellipsis,
        color: AppColors.noteTextColor
      ),
    );
  }
}