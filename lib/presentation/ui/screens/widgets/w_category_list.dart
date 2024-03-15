import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/w_category.dart';
import 'package:flutter/material.dart';

import '../../../../app_own_data/data_category.dart';

class WCategoryList extends StatelessWidget {
  const WCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categoryData.length,
          (index) => Padding(
            padding: EdgeInsets.only(
              right: categoryData.length - 1 != index ? 8 : 0,
              left: index == 0 ? 12 : 0,
            ),
            child: WCategory(text: categoryData[index].title),
          ),
        ),
      ),
    );
  }
}
