import 'package:brand_app_e_commerce/presentation/resources/app_colors.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_icons.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_images.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_text_styles.dart';
import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/w_star.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class WItemListItems extends StatelessWidget {
  const WItemListItems({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 1, color: AppColors.shadowColor),
          color: AppColors.productBackgroundColor,
        ),
        height: height * 0.16,
        child: Row(
          children: [
            // Photo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: width * 0.25,
                height: height,
                child: Image.asset(AppImages.avatarImage),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Laptop",
                    style: AppTextStyles.productNameTextStyle,
                  ),
                  Text(
                    "\$20",
                    style: AppTextStyles.verticalProductPriceTextStyle
                        .copyWith(fontSize: 20),
                  ),
                  SizedBox(
                    child: Row(
                      // mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        WStarMark(mark: 4),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "4.5",
                            style: AppTextStyles.productOrderTextStyle,
                          ),
                        ),
                        SvgPicture.asset(
                          AppIcons.dot,
                          color: AppColors.shadowColor,
                        ),
                        Text(
                          "145 orders",
                          style: AppTextStyles.productOrderTextStyle
                              .copyWith(color: AppColors.shadowColor),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Free shipping",
                    style: AppTextStyles.productDeliverTextStyle,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
