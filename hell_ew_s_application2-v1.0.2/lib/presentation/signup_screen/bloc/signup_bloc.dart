import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hell_ew_s_application2/presentation/signup_screen/models/signup_model.dart';
part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc(SignupState initialState) : super(initialState) {
    on<SignupInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SignupState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    SignupInitialEvent event,
    Emitter<SignupState> emit,
  ) async {
    emit(state.copyWith(
        group2820Controller: TextEditingController(),
        emailController: TextEditingController(),
        group2819Controller: TextEditingController(),
        isShowPassword: true));
  }
}
