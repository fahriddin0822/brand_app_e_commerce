import 'package:brand_app_e_commerce/app_own_data/data_category.dart';
import 'package:flutter/material.dart';
import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';

class WCategory extends StatelessWidget {
  final String text;
  const WCategory({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: width * 0.09,
      decoration: BoxDecoration(
        color: AppColors.categoryBackgroundColor,
        borderRadius: BorderRadius.circular(width * 0.01),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: AppColors.categoryBackgroundColor,
          width: 2,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.categoryTextStyle,
          ),
        ),
      ),
    );
  }
}
