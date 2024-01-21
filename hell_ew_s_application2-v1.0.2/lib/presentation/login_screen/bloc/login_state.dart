// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

class LoginState extends Equatable {
  LoginState({
    this.emailController,
    this.group2816Controller,
    this.isShowPassword = true,
    this.loginModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? group2816Controller;

  LoginModel? loginModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        group2816Controller,
        isShowPassword,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? emailController,
    TextEditingController? group2816Controller,
    bool? isShowPassword,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      emailController: emailController ?? this.emailController,
      group2816Controller: group2816Controller ?? this.group2816Controller,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
