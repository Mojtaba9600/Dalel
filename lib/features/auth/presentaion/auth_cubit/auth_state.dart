// ignore: unused_import
import 'package:flutter/material.dart';

class AuthState {}

final class AuthInitial extends AuthState {}

final class SignupLoadingState extends AuthState {}

final class SignupSuccesState extends AuthState {}

final class SignupFailureState extends AuthState {
  final String errMessage;
  SignupFailureState({required this.errMessage});
}

final class TermsAndConditionsUpdateState extends AuthState {}
