import 'package:dalel/core/utils/app_assets.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    imagePath: Assets.imagesOnBoarding,
    title: "Explore The history with Dalel in a smart way",
    subTitle:
        "Use our app's history libraries you can find many historical peroids",
  ),
  OnBoardingModel(
    imagePath: Assets.imagesOnBoarding1,
    title: "From evey place on earth",
    subTitle:
        "Use our app's history libraries you can find many historical peroids",
  ),
  OnBoardingModel(
    imagePath: Assets.imagesOnBoarding2,
    title: "Use modren AI techenology for better user experinece",
    subTitle:
        "Use our app's history libraries you can find many historical peroids",
  ),
];
