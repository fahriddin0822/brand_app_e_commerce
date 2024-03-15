import 'package:brand_app_e_commerce/presentation/resources/app_colors.dart';
import 'package:flutter/cupertino.dart';

abstract class AppTextStyles {
  static const TextStyle textActionStyle = TextStyle(
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
    fontFamily: 'BeVietnamPro',
  );
  static const TextStyle onBoardingTitle = TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: AppColors.titleColor,
    fontFamily: 'BeVietnamPro',
  );
  static const TextStyle onBoardingSubTitle = TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.subTitleColor,
    height: 1.6,
    fontFamily: 'BeVietnamPro',
  );
  static const TextStyle screenTitle = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 30,
    fontWeight: FontWeight.w800,
    fontFamily: 'BeVietnamPro',
  );

  static TextStyle labelTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.titleColor,
    fontFamily: 'BeVietnamPro',
  );
  static TextStyle categoryTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.primaryColor,
    fontFamily: 'BeVietnamPro',
  );
  static TextStyle productNameTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.titleColor,
    fontFamily: 'BeVietnamPro',
  );
  static TextStyle horisontalProductPriceTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.horisontalProductPriceColor,
    fontFamily: 'BeVietnamPro',
  );
  static TextStyle verticalProductPriceTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.verticalProductPriceColor,
    fontFamily: 'BeVietnamPro',
  );
  static TextStyle productDeliverTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.productDeliverColor,
    fontFamily: 'BeVietnamPro',
  );
  static TextStyle productOrderTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.productOrderColor,
    fontFamily: 'BeVietnamPro',
  );
}
