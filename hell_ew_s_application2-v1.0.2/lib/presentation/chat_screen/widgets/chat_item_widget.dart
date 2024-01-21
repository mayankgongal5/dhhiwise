import '../models/chat_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ChatItemWidget extends StatelessWidget {
  ChatItemWidget(this.chatItemModelObj);

  ChatItemModel chatItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAvatar18x182,
                height: getSize(
                  18,
                ),
                width: getSize(
                  18,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    6,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                ),
                child: Text(
                  "lbl_marriet_miles".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold14Gray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 1,
                  bottom: 2,
                ),
                child: Text(
                  "lbl_4min".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: getPadding(
                top: 11,
              ),
              child: Text(
                "msg_yes_i_saw_his".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular14Gray500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
