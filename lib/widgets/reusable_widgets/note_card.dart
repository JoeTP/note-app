import 'package:flutter/material.dart';
import 'package:note_app/utils/app_colors.dart';
import 'package:note_app/utils/text_styles.dart';
import 'package:sizer/sizer.dart';
import 'package:sizer/sizer.dart';

import '../../utils/constants.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(2.5.w),
        decoration: BoxDecoration(
          color: AppColors.noteColor,
          boxShadow: [
            BoxShadow(
                color: AppColors.noteShadowColor,
                blurRadius: 2,
                offset: Offset(1, 1)),
          ],
        ),
        width: double.maxFinite,
        height: 15.5.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleText('Subject Title'),
                Material(
                  child: IconButton(
                      splashRadius: 15,
                      onPressed: (){
                        ///TODO: make list of options:
                        ///1- delete
                        ///2- copy content
                        ///3- hide
                      },
                      icon: Icon(Icons.more_horiz_rounded)),
                )
              ],
            ),
            Expanded(
              child: NoteText(LOREM),
            )
          ],
        ),
      ),
    );
  }

}
