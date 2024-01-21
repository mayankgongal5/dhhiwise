import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'bloc/notifications_bloc.dart';
import 'models/notifications_item_model.dart';
import 'models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hell_ew_s_application2/widgets/custom_button.dart';

class NotificationsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationsBloc>(
        create: (context) => NotificationsBloc(
            NotificationsState(notificationsModelObj: NotificationsModel()))
          ..add(NotificationsInitialEvent()),
        child: NotificationsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(62),
                leadingWidth: 66,
                leading: AppbarImage(
                    height: getSize(38),
                    width: getSize(38),
                    svgPath: ImageConstant.imgRewind,
                    margin: getMargin(left: 28, top: 9, bottom: 9)),
                centerTitle: true,
                title: Text("lbl_title".tr.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProDisplayBold12
                        .copyWith(letterSpacing: getHorizontalSize(1.0)))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 28, top: 40, right: 28, bottom: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(children: [
                        Text("lbl_notifications".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold16WhiteA700),
                        Container(
                            width: getHorizontalSize(35),
                            margin: getMargin(left: 1),
                            padding: getPadding(
                                left: 9, top: 2, right: 9, bottom: 2),
                            decoration: AppDecoration.txtFillRedA200.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder4),
                            child: Text("lbl_03".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular12WhiteA700))
                      ]),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Row(children: [
                            Container(
                                height: getSize(8),
                                width: getSize(8),
                                margin: getMargin(top: 20, bottom: 21),
                                decoration: BoxDecoration(
                                    color: ColorConstant.redA200,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(4)))),
                            CustomImageView(
                                imagePath: ImageConstant.imgAvatar28x287,
                                height: getSize(28),
                                width: getSize(28),
                                radius:
                                    BorderRadius.circular(getHorizontalSize(8)),
                                margin:
                                    getMargin(left: 10, top: 10, bottom: 11)),
                            Padding(
                                padding:
                                    getPadding(left: 10, top: 15, bottom: 16),
                                child: Text("lbl_gunther_ackner".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold14)),
                            Padding(
                                padding:
                                    getPadding(left: 4, top: 16, bottom: 18),
                                child: Text("lbl_4min".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtInterRegular12WhiteA700)),
                            Spacer(),
                            CustomImageView(
                                imagePath: ImageConstant.imgPhoto49x491,
                                height: getSize(49),
                                width: getSize(49),
                                radius:
                                    BorderRadius.circular(getHorizontalSize(8)))
                          ])),
                      Padding(
                          padding: getPadding(top: 24, right: 5),
                          child: BlocSelector<NotificationsBloc,
                                  NotificationsState, NotificationsModel?>(
                              selector: (state) => state.notificationsModelObj,
                              builder: (context, notificationsModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(24));
                                    },
                                    itemCount: notificationsModelObj
                                            ?.notificationsItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      NotificationsItemModel model =
                                          notificationsModelObj
                                                      ?.notificationsItemList[
                                                  index] ??
                                              NotificationsItemModel();
                                      return NotificationsItemWidget(model);
                                    });
                              })),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Row(children: [
                            Container(
                                height: getSize(8),
                                width: getSize(8),
                                margin: getMargin(top: 20, bottom: 21),
                                decoration: BoxDecoration(
                                    color: ColorConstant.redA200,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(4)))),
                            CustomImageView(
                                imagePath: ImageConstant.imgAvatar28x283,
                                height: getSize(28),
                                width: getSize(28),
                                radius:
                                    BorderRadius.circular(getHorizontalSize(8)),
                                margin:
                                    getMargin(left: 10, top: 10, bottom: 11)),
                            Padding(
                                padding:
                                    getPadding(left: 10, top: 15, bottom: 16),
                                child: Text("lbl_gunther_ackner".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold14)),
                            Padding(
                                padding:
                                    getPadding(left: 4, top: 16, bottom: 18),
                                child: Text("lbl_4min".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtInterRegular12WhiteA700)),
                            Spacer(),
                            CustomImageView(
                                imagePath: ImageConstant.imgPhoto49x492,
                                height: getSize(49),
                                width: getSize(49),
                                radius:
                                    BorderRadius.circular(getHorizontalSize(8)))
                          ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 18, top: 24, bottom: 5),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgAvatar28x282,
                                              height: getSize(28),
                                              width: getSize(28),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(8)),
                                              margin: getMargin(bottom: 19)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 10, top: 5),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Row(children: [
                                                      Text(
                                                          "lbl_marriet_miles"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold14),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 3,
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_4min".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular12WhiteA700))
                                                    ]),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 8),
                                                        child: Text(
                                                            "msg_sent_you_a_frie"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular14WhiteA700))
                                                  ])),
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: getMargin(
                                                  left: 56, top: 6, bottom: 3),
                                              color: ColorConstant.whiteA70033,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                              child: Container(
                                                  height: getVerticalSize(38),
                                                  width: getHorizontalSize(40),
                                                  padding: getPadding(all: 10),
                                                  decoration: AppDecoration
                                                      .fillWhiteA70033
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder12),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCameraWhiteA700,
                                                        height:
                                                            getVerticalSize(18),
                                                        width:
                                                            getHorizontalSize(
                                                                19),
                                                        alignment:
                                                            Alignment.center,
                                                        onTap: () {
                                                          onTapImgCamera(
                                                              context);
                                                        })
                                                  ])))
                                        ]),
                                    CustomButton(
                                        height: getVerticalSize(30),
                                        width: getHorizontalSize(83),
                                        text: "lbl_added".tr,
                                        margin: getMargin(left: 38, top: 21),
                                        variant: ButtonVariant.FillWhiteA70033,
                                        prefixWidget: Container(
                                            margin: getMargin(right: 4),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCheckmark18x18)))
                                  ])))
                    ]))));
  }

  onTapImgCamera(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
