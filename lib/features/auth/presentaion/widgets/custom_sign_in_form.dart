import 'package:dalel/core/functons/navigation.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentaion/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentaion/auth_cubit/auth_state.dart';
import 'package:dalel/features/auth/presentaion/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentaion/widgets/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SigninSuccesState) {
          Fluttertoast.showToast(
            msg: "Welcome Back",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
          customReplacementNavigate(context, "/HomePage");
        } else if (state is SigninFailureState) {
          Fluttertoast.showToast(
            msg: state.errMessage,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.sininFormKey,
          child: Column(
            children: [
              SizedBox(height: 40),
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
              SizedBox(height: 16),
              ForgetPassword(),
              SizedBox(height: 102),
              state is SigninLoadingState
                  ? CircularProgressIndicator(color: AppColors.primaryColor)
                  : CustomButton(
                      onPressed: () {
                        if (authCubit.sininFormKey.currentState!.validate()) {
                          authCubit.signInWithEmailAndPassword();
                        }
                      },
                      text: AppStrings.signIn,
                    ),
            ],
          ),
        );
      },
    );
  }
}
