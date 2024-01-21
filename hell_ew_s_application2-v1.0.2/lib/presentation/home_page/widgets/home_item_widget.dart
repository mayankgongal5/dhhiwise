import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(this.homeItemModelObj);

  HomeItemModel homeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: double.maxFinite,
        child: Container(
          padding: getPadding(
            left: 18,
            top: 19,
            right: 18,
            bottom: 19,
          ),
          decoration: AppDecoration.fillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage38x381,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_dustin_houston".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium14Gray900,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
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
                  CustomImageView(
                    svgPath: ImageConstant.imgOverflowmenu,
                    height: getSize(
                      38,
                    ),
                    width: getSize(
                      38,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 21,
                ),
                child: Text(
                  "msg_whether_its_a_d".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14Gray500,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPhoto1160x193,
                      height: getVerticalSize(
                        160,
                      ),
                      width: getHorizontalSize(
                        193,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          8,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPhoto275x80,
                          height: getVerticalSize(
                            75,
                          ),
                          width: getHorizontalSize(
                            80,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              8,
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            75,
                          ),
                          width: getHorizontalSize(
                            80,
                          ),
                          margin: getMargin(
                            top: 10,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgPhoto375x80,
                                height: getVerticalSize(
                                  75,
                                ),
                                width: getHorizontalSize(
                                  80,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    8,
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgSettingsWhiteA700,
                                      height: getSize(
                                        14,
                                      ),
                                      width: getSize(
                                        14,
                                      ),
                                      margin: getMargin(
                                        top: 1,
                                        bottom: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                      ),
                                      child: Text(
                                        "lbl_17".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProDisplayMedium14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 6,
                    top: 24,
                    right: 11,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgFavorite1,
                        height: getSize(
                          14,
                        ),
                        width: getSize(
                          14,
                        ),
                        margin: getMargin(
                          top: 1,
                          bottom: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 5,
                        ),
                        child: Text(
                          "lbl_326".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium14Gray900,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgLocation,
                        height: getSize(
                          14,
                        ),
                        width: getSize(
                          14,
                        ),
                        margin: getMargin(
                          left: 28,
                          top: 1,
                          bottom: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                        ),
                        child: Text(
                          "lbl_148".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium14Gray900,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "lbl_share".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium14Gray900,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgReply,
                        height: getSize(
                          14,
                        ),
                        width: getSize(
                          14,
                        ),
                        margin: getMargin(
                          left: 5,
                          top: 1,
                          bottom: 1,
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
  }
}
