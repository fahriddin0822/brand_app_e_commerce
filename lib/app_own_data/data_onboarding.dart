class OnBoardingData {
  final String title;
  final String subtitle;
  final String image;

  OnBoardingData(
      {required this.title, required this.subtitle, required this.image});
}

List<OnBoardingData> onBoardingData = [
  OnBoardingData(
      title: "Fresh and new products",
      image: "assets/images/onboarding_images/onboarding_1.png",
      subtitle: "Buy and sell own products fast and comfortable at now"),
  OnBoardingData(
      title: "Fast and comfortable delivering",
      image: "assets/images/onboarding_images/onboarding_2.png",
      subtitle: "Buy and sell own products fast and comfortable at now"),
  OnBoardingData(
      title: "Buy your favorite products without leaving your room",
      image: "assets/images/onboarding_images/onboarding_3.png",
      subtitle: "Buy and sell own products fast and comfortable at now"),
];
