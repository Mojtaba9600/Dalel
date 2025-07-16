import 'package:dalel/core/functons/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/auth/presentaion/widgets/already_have_an_account.dart';
import 'package:dalel/features/auth/presentaion/widgets/custom_text_form.dart';
import 'package:dalel/features/auth/presentaion/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 152)),
            const SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcome),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 40)),
            const SliverToBoxAdapter(child: CustomSignUpFoem()),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: AlreadyHaveAnAccount(
                text1: AppStrings.alreadyHaveAnAccount,
                text2: AppStrings.signIn,
                onTap: () {
                  customReplacementNavigate(context, "/SignIn");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
