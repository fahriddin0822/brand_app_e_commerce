import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/w_item_list_items.dart';
import 'package:flutter/material.dart';

class ItemList extends StatefulWidget {
  const ItemList({super.key});

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WItemListItems(),
    );
  }
}
