import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/onBoarding/presentaion/views/widgets/custom_navBar.dart';
import 'package:flutter/material.dart';
import 'widgets/onBoarding_widget_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: 40),
              CustomNavbar(),
              OnBoardingWidgetBody(),
              SizedBox(height: 190),
              CustomButton(),
              SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
}
