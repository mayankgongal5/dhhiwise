import '../models/listavatar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ListavatarItemWidget extends StatelessWidget {
  ListavatarItemWidget(this.listavatarItemModelObj, {this.onTapMessage});

  ListavatarItemModel listavatarItemModelObj;

  VoidCallback? onTapMessage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMessage?.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: getSize(
              51,
            ),
            width: getSize(
              51,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAvatar28x2810,
                  height: getSize(
                    28,
                  ),
                  width: getSize(
                    28,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      8,
                    ),
                  ),
                  alignment: Alignment.topLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage28x281,
                  height: getSize(
                    28,
                  ),
                  width: getSize(
                    28,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      8,
                    ),
                  ),
                  alignment: Alignment.topRight,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: getSize(
                      28,
                    ),
                    padding: getPadding(
                      all: 7,
                    ),
                    decoration: AppDecoration.txtFillGray900.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder4,
                    ),
                    child: Text(
                      "lbl_9".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProDisplayBold1032,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 15,
              top: 4,
              bottom: 7,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_close_friends".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium14Gray900,
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
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
              bottom: 8,
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
                    left: 6,
                    top: 2,
                    right: 6,
                    bottom: 2,
                  ),
                  decoration: AppDecoration.txtFillRedA200.copyWith(
                    borderRadius: BorderRadiusStyle.txtRoundedBorder4,
                  ),
                  child: Text(
                    "lbl_1".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProDisplayMedium10,
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
