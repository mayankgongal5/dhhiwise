import '../models/search_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(this.searchItemModelObj);

  SearchItemModel searchItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        229,
      ),
      width: getHorizontalSize(
        154,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnail229x1541,
            height: getVerticalSize(
              229,
            ),
            width: getHorizontalSize(
              154,
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
            child: Container(
              padding: getPadding(
                left: 31,
                top: 20,
                right: 31,
                bottom: 20,
              ),
              decoration: AppDecoration.gradientGray90000Gray900cc.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder9,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage40x406,
                    height: getSize(
                      40,
                    ),
                    width: getSize(
                      40,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        12,
                      ),
                    ),
                    margin: getMargin(
                      top: 121,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 6,
                    ),
                    child: Text(
                      "lbl_edward_ford".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProDisplayBold16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
