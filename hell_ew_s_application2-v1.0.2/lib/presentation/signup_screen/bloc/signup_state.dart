// ignore_for_file: must_be_immutable

part of 'signup_bloc.dart';

class SignupState extends Equatable {
  SignupState({
    this.group2820Controller,
    this.emailController,
    this.group2819Controller,
    this.isShowPassword = true,
    this.signupModelObj,
  });

  TextEditingController? group2820Controller;

  TextEditingController? emailController;

  TextEditingController? group2819Controller;

  SignupModel? signupModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        group2820Controller,
        emailController,
        group2819Controller,
        isShowPassword,
        signupModelObj,
      ];
  SignupState copyWith({
    TextEditingController? group2820Controller,
    TextEditingController? emailController,
    TextEditingController? group2819Controller,
    bool? isShowPassword,
    SignupModel? signupModelObj,
  }) {
    return SignupState(
      group2820Controller: group2820Controller ?? this.group2820Controller,
      emailController: emailController ?? this.emailController,
      group2819Controller: group2819Controller ?? this.group2819Controller,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signupModelObj: signupModelObj ?? this.signupModelObj,
    );
  }
}
