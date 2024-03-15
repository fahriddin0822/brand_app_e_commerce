import 'package:flutter/material.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_icons.dart';
import '../../../resources/app_text_styles.dart';
import 'package:flutter_svg/svg.dart';

class WSearchBox extends StatefulWidget {
  const WSearchBox({super.key});

  @override
  State<WSearchBox> createState() => _WSearchBoxState();
}

class _WSearchBoxState extends State<WSearchBox> {
  TextEditingController searchController = TextEditingController();
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: 12, right: 12),
      child: Container(
        height: height * 0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowColor,
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 10),
              hintText: "Search",
              hintStyle: AppTextStyles.onBoardingSubTitle.copyWith(
                  fontSize: 24,
                  fontFamily: 'BeVietnamPro',
                  fontWeight: FontWeight.normal),
              filled: true,
              fillColor: AppColors.loginBackground,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(AppIcons.search),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
            style: AppTextStyles.onBoardingSubTitle
                .copyWith(fontSize: 24, fontFamily: 'BeVietnamPro'),
            textInputAction: TextInputAction.search,
          ),
        ),
      ),
    );
  }
}
