import '../models/messages_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class MessagesItemWidget extends StatelessWidget {
  MessagesItemWidget(this.messagesItemModelObj, {this.onTapMessage});

  MessagesItemModel messagesItemModelObj;

  VoidCallback? onTapMessage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMessage?.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: getVerticalSize(
              48,
            ),
            width: getHorizontalSize(
              50,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAvatar48x481,
                  height: getSize(
                    48,
                  ),
                  width: getSize(
                    48,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      12,
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: getVerticalSize(
                      12,
                    ),
                    width: getHorizontalSize(
                      15,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getVerticalSize(
                              12,
                            ),
                            width: getHorizontalSize(
                              15,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray100,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: getSize(
                              10,
                            ),
                            width: getSize(
                              10,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.green400,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 13,
              top: 5,
              bottom: 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_billy_green".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium14Gray900,
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    "msg_thank_you_for_s".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14Gray500,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 6,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_3_03pm".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12,
                ),
                Container(
                  width: getSize(
                    18,
                  ),
                  margin: getMargin(
                    top: 3,
                  ),
                  padding: getPadding(
                    left: 5,
                    top: 1,
                    right: 5,
                    bottom: 1,
                  ),
                  decoration: AppDecoration.txtFillRedA200.copyWith(
                    borderRadius: BorderRadiusStyle.txtRoundedBorder4,
                  ),
                  child: Text(
                    "lbl_1".tr.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold12WhiteA700.copyWith(
                      letterSpacing: getHorizontalSize(
                        1.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
