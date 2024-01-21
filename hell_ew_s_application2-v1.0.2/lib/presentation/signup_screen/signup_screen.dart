import 'bloc/signup_bloc.dart';
import 'models/signup_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';
import 'package:hell_ew_s_application2/widgets/custom_button.dart';
import 'package:hell_ew_s_application2/widgets/custom_text_form_field.dart';
import 'package:hell_ew_s_application2/domain/facebookauth/facebook_auth_helper.dart';
import 'package:hell_ew_s_application2/domain/googleauth/google_auth_helper.dart';

class SignupScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SignupBloc>(
        create: (context) =>
            SignupBloc(SignupState(signupModelObj: SignupModel()))
              ..add(SignupInitialEvent()),
        child: SignupScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage287x375,
                      height: getVerticalSize(287),
                      width: getHorizontalSize(375),
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: getPadding(
                              left: 28, top: 33, right: 28, bottom: 33),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL32),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 6),
                                    child: Text("lbl_welcome_back".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold22)),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Text("msg_login_to_contin".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14)),
                                Padding(
                                    padding: getPadding(top: 28),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.indigo600,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                              child: Container(
                                                  height: getVerticalSize(58),
                                                  width: getHorizontalSize(99),
                                                  padding: getPadding(
                                                      left: 40,
                                                      top: 20,
                                                      right: 40,
                                                      bottom: 20),
                                                  decoration: AppDecoration
                                                      .fillIndigo600
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder12),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFacebook,
                                                        height: getSize(18),
                                                        width: getSize(18),
                                                        alignment: Alignment
                                                            .centerRight,
                                                        onTap: () {
                                                          onTapImgFacebook(
                                                              context);
                                                        })
                                                  ]))),
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.gray900,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                              child: Container(
                                                  height: getVerticalSize(58),
                                                  width: getHorizontalSize(99),
                                                  padding: getPadding(
                                                      left: 40,
                                                      top: 20,
                                                      right: 40,
                                                      bottom: 20),
                                                  decoration: AppDecoration
                                                      .fillGray900
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder12),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgIconapple,
                                                        height: getSize(18),
                                                        width: getSize(18),
                                                        alignment: Alignment
                                                            .centerRight)
                                                  ]))),
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: ColorConstant
                                                          .gray50066,
                                                      width:
                                                          getHorizontalSize(2)),
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                              child: Container(
                                                  height: getVerticalSize(58),
                                                  width: getHorizontalSize(99),
                                                  padding: getPadding(
                                                      left: 40,
                                                      top: 20,
                                                      right: 40,
                                                      bottom: 20),
                                                  decoration: AppDecoration
                                                      .outlineGray50066
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder12),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgGoogle,
                                                        height: getSize(18),
                                                        width: getSize(18),
                                                        alignment: Alignment
                                                            .centerRight,
                                                        onTap: () {
                                                          onTapImgGoogle(
                                                              context);
                                                        })
                                                  ])))
                                        ])),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(top: 21),
                                        child: Text("msg_or_connect_with".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterRegular12))),
                                Padding(
                                    padding: getPadding(top: 31),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_name".tr.toUpperCase(),
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterBold12
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              1.0))),
                                          BlocSelector<SignupBloc, SignupState,
                                                  TextEditingController?>(
                                              selector: (state) =>
                                                  state.group2820Controller,
                                              builder: (context,
                                                  group2820Controller) {
                                                return CustomTextFormField(
                                                    focusNode: FocusNode(),
                                                    controller:
                                                        group2820Controller,
                                                    hintText:
                                                        "lbl_enter_name".tr,
                                                    margin: getMargin(top: 12),
                                                    padding:
                                                        TextFormFieldPadding
                                                            .PaddingT15);
                                              })
                                        ])),
                                Padding(
                                    padding: getPadding(top: 20),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_email".tr.toUpperCase(),
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterBold12
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              1.0))),
                                          BlocSelector<SignupBloc, SignupState,
                                                  TextEditingController?>(
                                              selector: (state) =>
                                                  state.emailController,
                                              builder:
                                                  (context, emailController) {
                                                return CustomTextFormField(
                                                    focusNode: FocusNode(),
                                                    controller: emailController,
                                                    hintText:
                                                        "lbl_user_mail_com".tr,
                                                    margin: getMargin(top: 12),
                                                    textInputType: TextInputType
                                                        .emailAddress,
                                                    suffix: Container(
                                                        margin: getMargin(
                                                            left: 30,
                                                            top: 15,
                                                            right: 15,
                                                            bottom: 15),
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgTelevision)),
                                                    suffixConstraints:
                                                        BoxConstraints(
                                                            maxHeight:
                                                                getVerticalSize(
                                                                    48)));
                                              })
                                        ])),
                                Padding(
                                    padding: getPadding(top: 20),
                                    child: Text("lbl_password".tr.toUpperCase(),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold12.copyWith(
                                            letterSpacing:
                                                getHorizontalSize(1.0)))),
                                BlocBuilder<SignupBloc, SignupState>(
                                    builder: (context, state) {
                                  return CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: state.group2819Controller,
                                      hintText: "lbl_password_123".tr,
                                      margin: getMargin(top: 12),
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: InkWell(
                                          onTap: () {
                                            context.read<SignupBloc>().add(
                                                ChangePasswordVisibilityEvent(
                                                    value:
                                                        !state.isShowPassword));
                                          },
                                          child: Container(
                                              margin: getMargin(
                                                  left: 30,
                                                  top: 12,
                                                  right: 12,
                                                  bottom: 12),
                                              child: CustomImageView(
                                                  svgPath: state.isShowPassword
                                                      ? ImageConstant.imgEye
                                                      : ImageConstant.imgEye))),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(48)),
                                      isObscureText: state.isShowPassword);
                                }),
                                CustomButton(
                                    height: getVerticalSize(58),
                                    text: "msg_create_an_accou".tr,
                                    margin: getMargin(top: 18),
                                    variant: ButtonVariant.FillIndigoA200,
                                    shape: ButtonShape.CircleBorder29,
                                    padding: ButtonPadding.PaddingAll19,
                                    fontStyle:
                                        ButtonFontStyle.InterBold14WhiteA700,
                                    onTap: () {
                                      onTapCreateanaccountOne(context);
                                    }),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(top: 25),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("msg_already_have_an3".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14Gray500),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapTxtAlreadyhavean(
                                                        context);
                                                  },
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 4),
                                                      child: Text(
                                                          "lbl_login".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular14)))
                                            ])))
                              ])))
                ]))));
  }

  onTapImgFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapImgGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapCreateanaccountOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onTapTxtAlreadyhavean(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
