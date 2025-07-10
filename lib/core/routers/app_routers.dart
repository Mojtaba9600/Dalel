import 'package:dalel/features/onBoarding/presentaion/views/on_boarding_view.dart';
import 'package:dalel/features/splash/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => const SplashView()),
    GoRoute(
      path: "/OnBoardingView",
      builder: (context, state) => const OnBoardingView(),
    ),
  ],
);
