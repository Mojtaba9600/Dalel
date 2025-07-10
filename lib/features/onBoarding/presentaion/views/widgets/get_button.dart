import 'package:dalel/core/functons/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/onBoarding/data/onBoardingModel/on_boarding_model.dart';
import 'package:flutter/material.dart';

class GetButton extends StatelessWidget {
  const GetButton({
    super.key,
    required this.currentIndex,
    required this.controller,
  });
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomButton(
            text: AppStrings.createAccount,
            onPressed: () {
              customReplacementNavigate(context, "/SignUp");
            },
          ),
          SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              customReplacementNavigate(context, "/SignIn");
            },
            child: Text(
              AppStrings.loginNow,
              style: CustomTextStyles.poppins300style16.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      );
    } else {
      return CustomButton(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        },
      );
    }
  }
}
