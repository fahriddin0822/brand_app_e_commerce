import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_icons.dart';

class WStarMark extends StatelessWidget {
  WStarMark({super.key, required this.mark});
  int mark;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        5,
        (index) => SizedBox(
          height: height * 0.02,
          width: height * 0.02,
          child: SvgPicture.asset(
            AppIcons.star_filled,
            color: index < mark
                ? AppColors.reViewEnabledColor
                : AppColors.reViewDisabledColor,
          ),
        ),
      ),
    );
    ;
  }
}
