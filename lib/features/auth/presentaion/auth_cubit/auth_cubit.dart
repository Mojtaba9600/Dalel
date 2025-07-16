import 'package:dalel/features/auth/presentaion/auth_cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  late String? fristName;
  late String? lastName;
  late String? emailAddress;
  late String? password;
  bool? termsAndConditionsCheckBoxValue = true;
  GlobalKey<FormState> sinupFormKey = GlobalKey();
  GlobalKey<FormState> sininFormKey = GlobalKey();
  signUpWithEmailAndPassword() async {
    try {
      emit(SignupLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignupSuccesState());
    } on FirebaseException catch (e) {
      if (e.code == "weak password") {
        emit(SignupFailureState(errMessage: "The Password is weak"));
      } else if (e.code == "email-already-in-use") {
        emit(
          SignupFailureState(errMessage: "the account is areadly signed in"),
        );
      }
    } catch (e) {
      emit(SignupFailureState(errMessage: e.toString()));
    }
  }

  updateTermsAndConditionsCheckBox({required newValue}) {
    termsAndConditionsCheckBoxValue = newValue;
    emit(TermsAndConditionsUpdateState());
  }

  signInWithEmailAndPassword() async {
    try {
      emit(SigninLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SigninSuccesState());
    } on FirebaseException catch (e) {
      if (e.code == "weak password") {
        emit(SigninFailureState(errMessage: "The Password is weak"));
      } else if (e.code == "email-already-in-use") {
        emit(
          SigninFailureState(errMessage: "the account is areadly signed in"),
        );
      }
    } catch (e) {
      emit(SigninFailureState(errMessage: e.toString()));
    }
  }
}
