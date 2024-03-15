import 'package:flutter/material.dart';

class UIParts extends StatelessWidget {
  const UIParts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

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
