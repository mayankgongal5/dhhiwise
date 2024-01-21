import 'bloc/video_chat_bloc.dart';
import 'models/video_chat_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';
import 'package:hell_ew_s_application2/widgets/custom_icon_button.dart';

class VideoChatScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<VideoChatBloc>(
      create: (context) => VideoChatBloc(VideoChatState(
        videoChatModelObj: VideoChatModel(),
      ))
        ..add(VideoChatInitialEvent()),
      child: VideoChatScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoChatBloc, VideoChatState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.blueA700,
            body: Container(
              height: getVerticalSize(
                668,
              ),
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: getMargin(
                        bottom: 28,
                      ),
                      padding: getPadding(
                        left: 168,
                        top: 22,
                        right: 168,
                        bottom: 22,
                      ),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL32,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Spacer(),
                          CustomImageView(
                            svgPath:
                                ImageConstant.imgIndicatoronlightGray9005x382,
                            height: getVerticalSize(
                              5,
                            ),
                            width: getHorizontalSize(
                              38,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: getVerticalSize(
                        640,
                      ),
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImagebackground,
                            height: getVerticalSize(
                              640,
                            ),
                            width: getHorizontalSize(
                              375,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: getPadding(
                                left: 28,
                                top: 15,
                                right: 28,
                                bottom: 489,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgRewind,
                                    height: getSize(
                                      38,
                                    ),
                                    width: getSize(
                                      38,
                                    ),
                                    margin: getMargin(
                                      bottom: 98,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage128x881,
                                    height: getVerticalSize(
                                      128,
                                    ),
                                    width: getHorizontalSize(
                                      88,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12,
                                      ),
                                    ),
                                    margin: getMargin(
                                      top: 8,
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
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: getPadding(
                left: 88,
                right: 87,
                bottom: 52,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    height: 48,
                    width: 48,
                    variant: IconButtonVariant.FillWhiteA700,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgIconmicoff,
                    ),
                  ),
                  CustomIconButton(
                    height: 48,
                    width: 48,
                    margin: getMargin(
                      left: 28,
                    ),
                    variant: IconButtonVariant.FillWhiteA70033,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgMinimize48x48,
                    ),
                  ),
                  CustomIconButton(
                    height: 48,
                    width: 48,
                    margin: getMargin(
                      left: 28,
                    ),
                    variant: IconButtonVariant.FillRedA200,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgReply48x48,
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
