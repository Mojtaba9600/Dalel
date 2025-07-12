import 'package:dalel/core/functons/navigation.dart';
import 'package:dalel/features/onBoarding/presentaion/views/functions/on_boarding_visited.dart';
import 'package:dalel/features/onBoarding/presentaion/views/widgets/custom_navBar.dart';
import 'package:dalel/features/onBoarding/presentaion/views/widgets/get_button.dart';
import 'package:flutter/material.dart';
import 'widgets/onBoarding_widget_body.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
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
              CustomNavbar(
                onTap: () {
                  OnBoadringVisited();
                  customReplacementNavigate(context, "/SignUp");
                },
              ),
              OnBoardingWidgetBody(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              SizedBox(height: 188),
              GetButton(controller: _controller, currentIndex: currentIndex),
              SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
}
