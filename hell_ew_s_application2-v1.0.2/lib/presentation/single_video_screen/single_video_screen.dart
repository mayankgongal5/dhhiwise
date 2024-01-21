import 'bloc/single_video_bloc.dart';
import 'models/single_video_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';
import 'package:hell_ew_s_application2/widgets/custom_icon_button.dart';

class SingleVideoScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SingleVideoBloc>(
      create: (context) => SingleVideoBloc(SingleVideoState(
        singleVideoModelObj: SingleVideoModel(),
      ))
        ..add(SingleVideoInitialEvent()),
      child: SingleVideoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SingleVideoBloc, SingleVideoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      margin: getMargin(
                        top: 18,
                      ),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL32,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgIndicatoronlight,
                            height: getVerticalSize(
                              5,
                            ),
                            width: getHorizontalSize(
                              38,
                            ),
                            margin: getMargin(
                              top: 22,
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              200,
                            ),
                            width: getHorizontalSize(
                              319,
                            ),
                            margin: getMargin(
                              top: 21,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgVideobackground200x319,
                                  height: getVerticalSize(
                                    200,
                                  ),
                                  width: getHorizontalSize(
                                    319,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      12,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 18,
                                      right: 18,
                                      bottom: 19,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgPlayWhiteA700,
                                              height: getSize(
                                                18,
                                              ),
                                              width: getSize(
                                                18,
                                              ),
                                              margin: getMargin(
                                                top: 5,
                                                bottom: 5,
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath: ImageConstant.imgTrash,
                                              height: getSize(
                                                28,
                                              ),
                                              width: getSize(
                                                28,
                                              ),
                                              margin: getMargin(
                                                left: 28,
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowleft18x18,
                                              height: getSize(
                                                18,
                                              ),
                                              width: getSize(
                                                18,
                                              ),
                                              margin: getMargin(
                                                left: 28,
                                                top: 5,
                                                bottom: 5,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 49,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 1,
                                                  bottom: 1,
                                                ),
                                                child: Text(
                                                  "lbl_01_23".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular12WhiteA700,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 7,
                                                  bottom: 7,
                                                ),
                                                child: Container(
                                                  height: getVerticalSize(
                                                    4,
                                                  ),
                                                  width: getHorizontalSize(
                                                    179,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .whiteA70048,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        2,
                                                      ),
                                                    ),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        2,
                                                      ),
                                                    ),
                                                    child:
                                                        LinearProgressIndicator(
                                                      value: 0.6,
                                                      backgroundColor:
                                                          ColorConstant
                                                              .whiteA70048,
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        ColorConstant
                                                            .whiteA700A2,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 1,
                                                  bottom: 1,
                                                ),
                                                child: Text(
                                                  "lbl_05_46".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular12WhiteA700,
                                                ),
                                              ),
                                              CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgMinimize,
                                                height: getSize(
                                                  18,
                                                ),
                                                width: getSize(
                                                  18,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: getHorizontalSize(
                                306,
                              ),
                              margin: getMargin(
                                left: 28,
                                top: 18,
                                right: 40,
                              ),
                              child: Text(
                                "msg_tropical_fresh".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold22,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 28,
                              top: 18,
                              right: 28,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage40x406,
                                  height: getSize(
                                    38,
                                  ),
                                  width: getSize(
                                    38,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      12,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_edward_ford".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium14Gray900,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "lbl_5_min_ago".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                CustomIconButton(
                                  height: 38,
                                  width: 38,
                                  variant: IconButtonVariant.FillIndigoA200,
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark18x18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              319,
                            ),
                            margin: getMargin(
                              left: 28,
                              top: 31,
                              right: 28,
                            ),
                            child: Text(
                              "msg_cancun_is_back".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular14Gray500,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 28,
                                top: 10,
                                right: 48,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: getHorizontalSize(
                                      52,
                                    ),
                                    padding: getPadding(
                                      left: 8,
                                      top: 2,
                                      right: 8,
                                      bottom: 2,
                                    ),
                                    decoration:
                                        AppDecoration.txtFillGray50048.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtRoundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_travel".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular12,
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      57,
                                    ),
                                    margin: getMargin(
                                      left: 10,
                                    ),
                                    padding: getPadding(
                                      left: 7,
                                      top: 2,
                                      right: 7,
                                      bottom: 2,
                                    ),
                                    decoration:
                                        AppDecoration.txtFillGray50048.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtRoundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_mexico".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular12,
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      43,
                                    ),
                                    margin: getMargin(
                                      left: 10,
                                    ),
                                    padding: getPadding(
                                      left: 8,
                                      top: 1,
                                      right: 8,
                                      bottom: 1,
                                    ),
                                    decoration:
                                        AppDecoration.txtFillGray50048.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtRoundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_vlog".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular12,
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      42,
                                    ),
                                    margin: getMargin(
                                      left: 10,
                                    ),
                                    padding: getPadding(
                                      left: 7,
                                      top: 1,
                                      right: 7,
                                      bottom: 1,
                                    ),
                                    decoration:
                                        AppDecoration.txtFillGray50048.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtRoundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_tips".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular12,
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      65,
                                    ),
                                    margin: getMargin(
                                      left: 10,
                                    ),
                                    padding: getPadding(
                                      left: 7,
                                      top: 2,
                                      right: 7,
                                      bottom: 2,
                                    ),
                                    decoration:
                                        AppDecoration.txtFillGray50048.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtRoundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_vacation".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              118,
                            ),
                            width: double.maxFinite,
                            margin: getMargin(
                              top: 10,
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    padding: getPadding(
                                      left: 168,
                                      top: 22,
                                      right: 168,
                                      bottom: 22,
                                    ),
                                    decoration:
                                        AppDecoration.fillGray900.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL32,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant
                                              .imgIndicatoronlightGray9005x38,
                                          height: getVerticalSize(
                                            5,
                                          ),
                                          width: getHorizontalSize(
                                            38,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              2,
                                            ),
                                          ),
                                          margin: getMargin(
                                            bottom: 69,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 38,
                                      top: 28,
                                      right: 28,
                                      bottom: 52,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgFavorite14x14,
                                          height: getSize(
                                            14,
                                          ),
                                          width: getSize(
                                            14,
                                          ),
                                          margin: getMargin(
                                            top: 12,
                                            bottom: 12,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 5,
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: Text(
                                            "lbl_326".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterMedium14WhiteA700,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgLaptopWhiteA700,
                                          height: getSize(
                                            14,
                                          ),
                                          width: getSize(
                                            14,
                                          ),
                                          margin: getMargin(
                                            left: 33,
                                            top: 12,
                                            bottom: 12,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 6,
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: Text(
                                            "lbl_148".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterMedium14WhiteA700,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgReply14x14,
                                          height: getSize(
                                            14,
                                          ),
                                          width: getSize(
                                            14,
                                          ),
                                          margin: getMargin(
                                            left: 33,
                                            top: 12,
                                            bottom: 12,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 5,
                                            top: 10,
                                            bottom: 10,
                                          ),
                                          child: Text(
                                            "lbl_share".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterMedium14WhiteA700,
                                          ),
                                        ),
                                        Spacer(),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgOptions,
                                          height: getSize(
                                            38,
                                          ),
                                          width: getSize(
                                            38,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
