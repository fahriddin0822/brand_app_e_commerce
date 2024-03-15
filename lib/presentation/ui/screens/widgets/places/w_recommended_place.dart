import 'package:brand_app_e_commerce/app_own_data/data_product.dart';
import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/w_product_item.dart';
import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/w_recommended_items.dart';
import 'package:flutter/material.dart';

class WRecommendedPlace extends StatelessWidget {
  WRecommendedPlace({super.key, required this.data, required this.index});
  List data;
  int index;

  @override
  Widget build(BuildContext context) {
    return WRecommendedItems(
      onTap: () {},
      price: data[index].price,
      name: data[index].nameOfProduct,
      mark: data[index].mark,
      image: data[index].image,
    );
  }
}
