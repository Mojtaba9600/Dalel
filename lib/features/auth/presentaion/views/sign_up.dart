import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentaion/widgets/already_have_an_account.dart';
import 'package:dalel/features/auth/presentaion/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentaion/widgets/terms_and_conditions.dart';
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
            const SliverToBoxAdapter(
              child: CustomTextField(labelText: AppStrings.fristName),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(labelText: AppStrings.lastName),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(labelText: AppStrings.emailAddress),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(labelText: AppStrings.password),
            ),
            const SliverToBoxAdapter(child: TermsAndConditionWidget()),
            const SliverToBoxAdapter(child: SizedBox(height: 188)),
            SliverToBoxAdapter(
              child: CustomButton(onPressed: () {}, text: AppStrings.signUp),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: AlreadyHaveAnAccount(
                text1: AppStrings.alreadyHaveAnAccount,
                text2: AppStrings.signIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
