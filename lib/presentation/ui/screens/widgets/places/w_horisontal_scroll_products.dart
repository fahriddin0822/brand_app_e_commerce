import 'package:brand_app_e_commerce/app_own_data/data_product.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_images.dart';
import 'package:flutter/material.dart';
import '../../../../resources/app_colors.dart';
import '../../../../resources/app_icons.dart';
import '../w_ScrollHorisontalPageTitle.dart';
import '../w_product_item.dart';
import 'package:flutter_svg/svg.dart';

class WProductsHorisontalScroll extends StatelessWidget {
  WProductsHorisontalScroll({super.key, required this.productItemData});
  List productItemData;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.productBackgroundColor,
          ),
          child: Column(
            children: [
              // upper place
              Container(
                width: width,
                padding: EdgeInsets.all(16),
                child: WHorisontalScrollpageTitle(
                    text: productItemData[0].nameOfGroup),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    products.length,
                    (index) => WProductItem(
                      onTap: () {},
                      price: productItemData[index].price,
                      nameOfProduct: productItemData[index].nameOfProduct,
                      mark: productItemData[index].mark,
                      image: productItemData[index].image,
                    ),
                  ),
                ),
              ),
              // under place
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.shadowColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      child: WHorisontalScrollpageTitle(text: "Sources now"),
                    ),
                    SizedBox(
                      height: height * 0.04,
                      width: width * 0.1,
                      child: SvgPicture.asset(AppIcons.arrow_forward),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
