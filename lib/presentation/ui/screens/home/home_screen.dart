import 'package:brand_app_e_commerce/app_own_data/data_category.dart';
import 'package:brand_app_e_commerce/app_own_data/data_product.dart';
import 'package:brand_app_e_commerce/app_own_data/data_ui.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_colors.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_icons.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_images.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_text_styles.dart';
import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/dash.dart';
import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/places/w_horisontal_scroll_products.dart';
import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/places/w_recommended_place.dart';
import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/w_ScrollHorisontalPageTitle.dart';
import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/w_category.dart';
import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/w_category_list.dart';
import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/w_product_item.dart';
import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/w_recommended_items.dart';
import 'package:brand_app_e_commerce/presentation/ui/screens/widgets/w_searchbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/places/w_horisontal_product_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 0;
  double width = 0;
  final GlobalKey<ScaffoldState> _keyScaffold = GlobalKey();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _keyScaffold,
      backgroundColor: AppColors.backgroundColor,
      appBar: _getAppBar(),
      body: Column(
        children: [
          _getHeightSpace(0.01),
          // Searchbox
          WSearchBox(),
          _getHeightSpace(0.02),
          // category list
          WCategoryList(),
          _getHeightSpace(0.016),
          // vertical product scroll
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) => WProductsHorisontalScroll(
                      productItemData: [...products],
                    ),
                  ),
                  WHorisontalProductBuilder(
                    data: [...products],
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      crossAxisSpacing: 8.0, // Spacing between columns
                      mainAxisSpacing: 8.0, // Spacing between rows
                    ),
                    itemCount: products
                        .length, // Specify the number of items in your GridView
                    itemBuilder: (context, index) {
                      // Build GridView item here
                      return WRecommendedPlace(
                        data: [...products],
                        index: index,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: _getDrawer(),
    );
  }

  SizedBox _getWidthSpace(double val) {
    return SizedBox(
      width: width * val,
    );
  }

  SizedBox _getHeightSpace(double val) {
    return SizedBox(
      height: height * val,
    );
  }

  _getMenuItem({required String text, required String icon}) => ListTile(
        leading: Padding(
          padding: EdgeInsets.only(left: width * 0.04),
          child: SizedBox(
            height: width * 0.08,
            width: width * 0.08,
            child: SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn),
            ),
          ),
        ),
        title: Text(text),
      );

  AppBar _getAppBar() {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  _keyScaffold.currentState!.openDrawer();
                },
                child: SizedBox(
                  height: height * 0.036,
                  width: width * 0.08,
                  child: SvgPicture.asset(AppIcons.menu),
                ),
              ),
              _getWidthSpace(0.01),
              SizedBox(
                height: height * 0.032,
                width: width * 0.08,
                child: SvgPicture.asset(AppIcons.shop),
              ),
              // Title
              Text(
                AppUiData.nameOfMarket,
                style: AppTextStyles.labelTextStyle.copyWith(fontSize: 24),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: height * 1,
                width: width * 0.08,
                child: SvgPicture.asset(AppIcons.buy),
              ),
              _getWidthSpace(0.03),
              SizedBox(
                height: height * 1,
                width: width * 0.075,
                child: SvgPicture.asset(AppIcons.person),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _getDrawer() {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: AppColors.backgroundColor,
            height: height * 0.2,
            width: width,
            child: Padding(
              padding: EdgeInsets.only(
                left: width * 0.08,
                top: height * 0.06,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: width * 0.08,
                    backgroundImage: AssetImage(
                      AppImages.avatarImage,
                    ),
                  ),
                  _getHeightSpace(0.02),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Sign up",
                          style: AppTextStyles.labelTextStyle
                              .copyWith(fontSize: 18),
                        ),
                      ),
                      _getWidthSpace(0.04),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Sign in",
                          style: AppTextStyles.labelTextStyle
                              .copyWith(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.8,
            child: ListView(
              children: [
                _getMenuItem(icon: AppIcons.home, text: "Home"),
                _getMenuItem(text: "Categories", icon: AppIcons.list),
                _getMenuItem(text: "Favorites", icon: AppIcons.favorite),
                _getMenuItem(text: "My orders", icon: AppIcons.menu),
                Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: MySeparator(),
                ),
                _getMenuItem(text: "English", icon: AppIcons.language),
                _getMenuItem(text: "Contact us", icon: AppIcons.shop),
                _getMenuItem(text: "About us", icon: AppIcons.business),
                _getMenuItem(text: "Privacy", icon: AppIcons.privacy)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
