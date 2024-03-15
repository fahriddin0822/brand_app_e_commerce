import 'package:brand_app_e_commerce/app_own_data/data_onboarding.dart';
import 'package:brand_app_e_commerce/app_own_data/data_ui.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_text_styles.dart';
import 'package:brand_app_e_commerce/presentation/ui/screens/log_in/log_in_screen.dart';
import 'package:flutter/material.dart';
import '../../../resources/app_colors.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController(initialPage: 0);
  int page = 0;

  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
            child: SizedBox(),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.only(right: 30, top: 40),
            child: GestureDetector(
              onTap: () {
                if (page != onBoardingData.length - 1) {
                  setState(() {
                    page++;
                    controller.animateToPage(
                      page,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.decelerate,
                    );
                  });
                } else {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => LogInScreen(),
                      ),
                      (route) => false);
                }
              },
              child: Text(
                AppUiData.nameOfActionButtonOfOnboarding,
                style: AppTextStyles.textActionStyle,
              ),
            ),
          ),
          _getSpace(size: 0.05),
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (int index) {
                setState(() {
                  page = index;
                });
              },
              physics: BouncingScrollPhysics(),
              children: List.generate(
                onBoardingData.length,
                (index) => _getPage(
                  onBoardingData[index],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _getDots(onBoardingData.length, page),
          ),
          _getSpace(size: 0.1),
        ],
      ),
    );
  }

  _getSpace({required double size}) => SizedBox(height: height * size);

  _getDots(int numberOfDots, int activeIndex) => List.generate(
        numberOfDots,
        (index) {
          return Container(
            height: 12,
            width: 12,
            margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: index == activeIndex
                  ? AppColors.primaryColor
                  : AppColors.primaryColor.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
          );
        },
      );

  _getPage(OnBoardingData data) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.0),
        child: Column(
          children: [
            Image.asset(
              data.image,
              width: width,
              height: height * 0.5,
            ),
            Text(
              data.title,
              style: AppTextStyles.onBoardingTitle,
            ),
            _getSpace(size: 0.01),
            Text(
              data.subtitle,
              style: AppTextStyles.onBoardingSubTitle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
}
