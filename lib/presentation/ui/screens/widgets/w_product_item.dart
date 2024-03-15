import 'package:brand_app_e_commerce/presentation/resources/app_colors.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_icons.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_images.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_text_styles.dart';
import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/w_star.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WProductItem extends StatelessWidget {
  WProductItem(
      {super.key,
      required this.onTap,
      required this.price,
      required this.nameOfProduct,
      required this.mark,
      required this.image});
  String price;
  String image;
  String nameOfProduct;
  int mark;
  double height = 0;
  double width = 0;
  GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width * 0.4,
        decoration: BoxDecoration(
          border:
              Border.all(color: AppColors.categoryBackgroundColor, width: 2),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: height * 0.2,
              width: width * 0.36,
              padding: EdgeInsets.all(width * 0.01),
              child: Image.asset(image),
            ),
            WStarMark(mark: mark),
            Text(
              nameOfProduct,
              style: AppTextStyles.productNameTextStyle,
            ),
            Text(
              "$price",
              style: AppTextStyles.horisontalProductPriceTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
