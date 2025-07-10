import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'custom_smooth_page_controller.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 343,
                height: 290,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.imagesOnBoarding2),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 34),
              CustomSmoothPageController(controller: _controller),
              SizedBox(height: 42),
              Text(
                "Explore The history with Dalel in a smart way",
                style: CustomTextStyles.poppins500style24.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 25),
              Text(
                "Explore The history with Dalel in a smart way",
                style: CustomTextStyles.poppins300style16,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      ),
    );
  }
}
