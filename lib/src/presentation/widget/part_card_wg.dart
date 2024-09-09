import 'package:flutter/material.dart';
import 'package:speak_with_you/src/config/app_extensions/max_length.dart';
import 'package:speak_with_you/src/config/app_style.dart';
import 'package:speak_with_you/src/utils/app_colors.dart';

class PartCardWg extends StatelessWidget {
  final String title;
  final Function onTab;
  const PartCardWg({super.key, required this.title, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTab(),
      child: Container(
        width: context.maxWidth(),
        height: context.maxHeight() * 0.08,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: AppColors.clWhite
          ),
            color: AppColors.clTransparent, borderRadius: BorderRadius.circular(20)),
        child: Text(
          title,
          style: AppStyle.partCardST,
        ),
      ),
    );
  }
}
