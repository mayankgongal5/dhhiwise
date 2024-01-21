import 'bloc/settings_bloc.dart';
import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hell_ew_s_application2/widgets/custom_icon_button.dart';

class SettingsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
        create: (context) =>
            SettingsBloc(SettingsState(settingsModelObj: SettingsModel()))
              ..add(SettingsInitialEvent()),
        child: SettingsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray900,
              appBar: CustomAppBar(
                  height: getVerticalSize(62),
                  leadingWidth: 66,
                  leading: AppbarIconbutton2(
                      svgPath: ImageConstant.imgArrowleft1,
                      margin: getMargin(left: 28, top: 9, bottom: 9),
                      onTap: () {
                        onTapArrowleft3(context);
                      }),
                  title: Padding(
                      padding: getPadding(left: 18),
                      child: Row(children: [
                        AppbarImage(
                            height: getSize(40),
                            width: getSize(40),
                            imagePath: ImageConstant.imgVector1),
                        Padding(
                            padding: getPadding(left: 6, top: 1, bottom: 1),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  AppbarSubtitle1(text: "lbl_marriet_miles".tr),
                                  AppbarSubtitle(
                                      text: "lbl_online".tr,
                                      margin: getMargin(top: 2, right: 36))
                                ]))
                      ]))),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 28, top: 40, right: 28, bottom: 40),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("lbl_settings".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold22WhiteA700),
                        Padding(
                            padding: getPadding(top: 27),
                            child: Row(children: [
                              CustomIconButton(
                                  height: 38,
                                  width: 38,
                                  variant: IconButtonVariant.FillWhiteA700,
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgUser1)),
                              Padding(
                                  padding:
                                      getPadding(left: 18, top: 10, bottom: 7),
                                  child: Text("lbl_my_account".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold16WhiteA700))
                            ])),
                        Padding(
                            padding: getPadding(top: 38),
                            child: Row(children: [
                              CustomIconButton(
                                  height: 38,
                                  width: 38,
                                  variant: IconButtonVariant.OutlineGray50066,
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgNotification)),
                              Padding(
                                  padding:
                                      getPadding(left: 18, top: 8, bottom: 9),
                                  child: Text("lbl_notifications".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold16WhiteA700))
                            ])),
                        Padding(
                            padding: getPadding(top: 38),
                            child: Row(children: [
                              CustomIconButton(
                                  height: 38,
                                  width: 38,
                                  variant: IconButtonVariant.OutlineGray50066,
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgClock18x18)),
                              Padding(
                                  padding:
                                      getPadding(left: 18, top: 10, bottom: 7),
                                  child: Text("msg_activity_histor".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold16WhiteA700))
                            ])),
                        Padding(
                            padding: getPadding(top: 38),
                            child: Row(children: [
                              CustomIconButton(
                                  height: 38,
                                  width: 38,
                                  variant: IconButtonVariant.OutlineGray50066,
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgAlarm)),
                              Padding(
                                  padding:
                                      getPadding(left: 18, top: 10, bottom: 7),
                                  child: Text("msg_billing_and_pay".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProDisplayBold16))
                            ])),
                        Padding(
                            padding: getPadding(top: 38),
                            child: Row(children: [
                              CustomIconButton(
                                  height: 38,
                                  width: 38,
                                  variant: IconButtonVariant.OutlineGray50066,
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              Padding(
                                  padding:
                                      getPadding(left: 18, top: 10, bottom: 7),
                                  child: Text("msg_security_priv".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold16WhiteA700))
                            ])),
                        Padding(
                            padding: getPadding(top: 38, bottom: 5),
                            child: Row(children: [
                              CustomIconButton(
                                  height: 38,
                                  width: 38,
                                  variant: IconButtonVariant.OutlineGray50066,
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgSettings18x18)),
                              Padding(
                                  padding:
                                      getPadding(left: 18, top: 10, bottom: 7),
                                  child: Text("lbl_help".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold16WhiteA700))
                            ]))
                      ]))));
    });
  }

  onTapArrowleft3(BuildContext context) {
    NavigatorService.goBack();
  }
}
