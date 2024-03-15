import 'package:brand_app_e_commerce/presentation/resources/app_text_styles.dart';
import 'package:flutter/material.dart';

class WHorisontalScrollpageTitle extends StatelessWidget {
  final String text;
  const WHorisontalScrollpageTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.labelTextStyle,
    );
  }
}
