import 'bloc/user_profile_bloc.dart';
import 'models/user_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<UserProfileBloc>(
      create: (context) => UserProfileBloc(UserProfileState(
        userProfileModelObj: UserProfileModel(),
      ))
        ..add(UserProfileInitialEvent()),
      child: UserProfilePage(),
    );
  }
}

class _UserProfilePageState extends State<UserProfilePage>
    with AutomaticKeepAliveClientMixin<UserProfilePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserProfileBloc, UserProfileState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
              width: size.width,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: getMargin(
                        left: 28,
                        top: 40,
                        right: 28,
                      ),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgAvatar38x387,
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
                                      "lbl_katherine_cole".tr,
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
                          CustomImageView(
                            imagePath: ImageConstant.imgImage150x2832,
                            height: getVerticalSize(
                              150,
                            ),
                            width: getHorizontalSize(
                              283,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                8,
                              ),
                            ),
                            margin: getMargin(
                              top: 19,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              276,
                            ),
                            margin: getMargin(
                              top: 18,
                              right: 7,
                            ),
                            child: Text(
                              "msg_the_best_fashio".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold16,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              250,
                            ),
                            margin: getMargin(
                              top: 7,
                              right: 33,
                            ),
                            child: Text(
                              "msg_if_you_are_look".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 6,
                                top: 32,
                                right: 11,
                                bottom: 4,
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
                                      top: 3,
                                      bottom: 3,
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
                                    svgPath: ImageConstant.imgLocationGray500,
                                    height: getSize(
                                      14,
                                    ),
                                    width: getSize(
                                      14,
                                    ),
                                    margin: getMargin(
                                      left: 27,
                                      top: 3,
                                      bottom: 3,
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
                                      top: 3,
                                      bottom: 3,
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
          ),
        );
      },
    );
  }
}
