import 'package:brand_app_e_commerce/app_own_data/data_product.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_colors.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_images.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_text_styles.dart';
import 'package:flutter/material.dart';

class WRecommendedItems extends StatelessWidget {
  WRecommendedItems({
    super.key,
    required this.onTap,
    required this.price,
    required this.name,
    required this.mark,
    required this.image,
  });
  double height = 0;
  double width = 0;
  String price;
  String name;
  String image;
  int mark;
  GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      // width: width * 0.4,
      // height: height * 0.4,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          width: 1,
          color: AppColors.shadowColor,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
          Text(
            price,
            style: AppTextStyles.verticalProductPriceTextStyle,
          ),
          Text(
            name,
            style: AppTextStyles.horisontalProductPriceTextStyle,
          ),
        ],
      ),
    );
  }
}
