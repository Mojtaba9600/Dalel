import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentaion/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentaion/auth_cubit/auth_state.dart';
import 'package:dalel/features/auth/presentaion/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentaion/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpFoem extends StatelessWidget {
  const CustomSignUpFoem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.sinupFormKey,
          child: Column(
            children: [
              CustomTexFormtField(
                labelText: AppStrings.fristName,
                onChanged: (fristName) {
                  authCubit.fristName = fristName;
                },
              ),
              CustomTexFormtField(
                labelText: AppStrings.lastName,
                onChanged: (lastName) {
                  authCubit.lastName = lastName;
                },
              ),
              CustomTexFormtField(
                labelText: AppStrings.emailAddress,
                onChanged: (emailAddress) {
                  authCubit.emailAddress = emailAddress;
                },
              ),
              CustomTexFormtField(
                labelText: AppStrings.password,
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              const TermsAndConditionWidget(),
              const SizedBox(height: 188),
              CustomButton(
                color: authCubit.termsAndConditionsCheckBoxValue == false
                    ? AppColors.grey
                    : null,
                onPressed: () {
                  if (authCubit.termsAndConditionsCheckBoxValue == true) {
                    if (authCubit.sinupFormKey.currentState!.validate()) {
                      authCubit.signInWithEmailAndPassword();
                    }
                  }
                },
                text: AppStrings.signUp,
              ),
            ],
          ),
        );
      },
    );
  }
}
