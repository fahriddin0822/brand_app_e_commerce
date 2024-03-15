import 'package:brand_app_e_commerce/presentation/resources/app_colors.dart';
import 'package:brand_app_e_commerce/presentation/resources/app_images.dart';
import 'package:brand_app_e_commerce/presentation/ui/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashTimeOut();
  }

  Future<void> splashTimeOut() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const OnBoardingScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Image(
                  image: AssetImage(AppImages.splashScreenLogo),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _getDots(5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _getDots(int numberOfDots) => List.generate(
        numberOfDots,
        (index) {
          double opacityPercentage = 100 / numberOfDots;
          double calculate = 100 - (index * opacityPercentage);
          double opacity = calculate / 100;
          return Container(
            height: 12,
            width: 12,
            margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(opacity),
              shape: BoxShape.circle,
            ),
          );
        },
      );
}
