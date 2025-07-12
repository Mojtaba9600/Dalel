import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/features/auth/presentaion/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentaion/views/sign_in.dart';
import 'package:dalel/features/auth/presentaion/views/sign_up.dart';
import 'package:dalel/features/onBoarding/presentaion/views/on_boarding_view.dart';
import 'package:dalel/features/splash/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => const SplashView()),
    GoRoute(
      path: "/OnBoardingView",
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: "/SignUp",
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: SignUp(),
      ),
    ),
    GoRoute(
      path: "/SignIn",
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: const SignIn(),
      ),
    ),
  ],
);
