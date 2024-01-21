import '../models/events_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class EventsItemWidget extends StatelessWidget {
  EventsItemWidget(this.eventsItemModelObj);

  EventsItemModel eventsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 17,
          top: 18,
          right: 17,
          bottom: 18,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage180x2831,
              height: getVerticalSize(
                180,
              ),
              width: getHorizontalSize(
                283,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  8,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 19,
              ),
              child: Row(
                children: [
                  Container(
                    width: getSize(
                      38,
                    ),
                    padding: getPadding(
                      left: 15,
                      top: 8,
                      right: 15,
                      bottom: 8,
                    ),
                    decoration: AppDecoration.txtOutlineGray5006c.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder12,
                    ),
                    child: Text(
                      eventsItemModelObj.typeTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                      top: 1,
                      bottom: 1,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_monday".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium14Gray900,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 3,
                          ),
                          child: Text(
                            "lbl_december_2019".tr,
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
                    svgPath: ImageConstant.imgOverflowmenu18x18,
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
            Padding(
              padding: getPadding(
                top: 21,
              ),
              child: Text(
                "lbl_fashion_meetup".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold16,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 10,
              ),
              child: Text(
                "msg_starts_at_9_00a".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium14,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 28,
                bottom: 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: getHorizontalSize(
                      87,
                    ),
                    padding: getPadding(
                      left: 9,
                      top: 5,
                      right: 9,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.txtFillGreen400.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder4,
                    ),
                    child: Text(
                      "lbl_interested".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium14WhiteA700,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      28,
                    ),
                    width: getHorizontalSize(
                      74,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgAvatar28x286,
                          height: getSize(
                            28,
                          ),
                          width: getSize(
                            28,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              9,
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgAvatar28x286,
                          height: getSize(
                            28,
                          ),
                          width: getSize(
                            28,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              9,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: getSize(
                              28,
                            ),
                            padding: getPadding(
                              left: 4,
                              top: 5,
                              right: 4,
                              bottom: 5,
                            ),
                            decoration: AppDecoration.txtFillGray900.copyWith(
                              borderRadius: BorderRadiusStyle.txtRoundedBorder9,
                            ),
                            child: Text(
                              "lbl_9".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold14,
                            ),
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
      ),
    );
  }
}
