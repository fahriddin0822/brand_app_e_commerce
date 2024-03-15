import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/places/w_horisontal_scroll_products.dart';
import 'package:flutter/material.dart';

class WHorisontalProductBuilder extends StatelessWidget {
  WHorisontalProductBuilder({super.key, required this.data});
  List data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) => WProductsHorisontalScroll(
        productItemData: [data],
      ),
    );
  }
}
