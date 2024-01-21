import '../group_chat_screen/widgets/listavatar1_item_widget.dart';
import 'bloc/group_chat_bloc.dart';
import 'models/group_chat_model.dart';
import 'models/listavatar1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hell_ew_s_application2/widgets/custom_text_form_field.dart';

class GroupChatScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<GroupChatBloc>(
        create: (context) =>
            GroupChatBloc(GroupChatState(groupChatModelObj: GroupChatModel()))
              ..add(GroupChatInitialEvent()),
        child: GroupChatScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(61),
                leadingWidth: 66,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgArrowleft1,
                    margin: getMargin(left: 28, top: 9, bottom: 8),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                title: Padding(
                    padding: getPadding(left: 18),
                    child: Row(children: [
                      AppbarImage(
                          height: getSize(40),
                          width: getSize(40),
                          imagePath: ImageConstant.imgVector1),
                      Padding(
                          padding: getPadding(left: 6, top: 1, bottom: 1),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AppbarSubtitle1(text: "lbl_marriet_miles".tr),
                                AppbarSubtitle(
                                    text: "lbl_online".tr,
                                    margin: getMargin(top: 2, right: 36))
                              ]))
                    ])),
                actions: [
                  AppbarImage(
                      height: getSize(25),
                      width: getSize(25),
                      svgPath: ImageConstant.imgIconoptionsGray50025x25,
                      margin:
                          getMargin(left: 28, top: 7, right: 28, bottom: 23))
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 28, top: 28, right: 28),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.whiteA70033,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12),
                                    child: Container(
                                        height: getVerticalSize(48),
                                        width: getHorizontalSize(99),
                                        padding: getPadding(
                                            left: 40,
                                            top: 15,
                                            right: 40,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .fillWhiteA70033
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgIconoptions,
                                              height: getSize(18),
                                              width: getSize(18),
                                              alignment: Alignment.centerRight)
                                        ]))),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(left: 11),
                                    color: ColorConstant.whiteA70033,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12),
                                    child: Container(
                                        height: getVerticalSize(48),
                                        width: getHorizontalSize(99),
                                        padding: getPadding(
                                            left: 40,
                                            top: 15,
                                            right: 40,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .fillWhiteA70033
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgCall,
                                              height: getSize(18),
                                              width: getSize(18),
                                              alignment: Alignment.centerRight)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapVideoCamera(context);
                                    },
                                    child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 11),
                                        color: ColorConstant.whiteA70033,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder12),
                                        child: Container(
                                            height: getVerticalSize(48),
                                            width: getHorizontalSize(99),
                                            padding: getPadding(
                                                left: 40,
                                                top: 15,
                                                right: 40,
                                                bottom: 15),
                                            decoration: AppDecoration
                                                .fillWhiteA70033
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVideocamera,
                                                  height: getSize(18),
                                                  width: getSize(18),
                                                  alignment:
                                                      Alignment.centerRight)
                                            ]))))
                              ])),
                      Container(
                          height: getVerticalSize(592),
                          width: double.maxFinite,
                          margin: getMargin(top: 38),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: getPadding(
                                        left: 168,
                                        top: 22,
                                        right: 168,
                                        bottom: 22),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL32),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgIndicatoronlightGray900,
                                              height: getVerticalSize(5),
                                              width: getHorizontalSize(38),
                                              margin: getMargin(bottom: 543))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(left: 28, right: 28),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(right: 41),
                                              child: BlocSelector<
                                                      GroupChatBloc,
                                                      GroupChatState,
                                                      GroupChatModel?>(
                                                  selector: (state) =>
                                                      state.groupChatModelObj,
                                                  builder: (context,
                                                      groupChatModelObj) {
                                                    return ListView.separated(
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        shrinkWrap: true,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      30));
                                                        },
                                                        itemCount: groupChatModelObj
                                                                ?.listavatar1ItemList
                                                                .length ??
                                                            0,
                                                        itemBuilder:
                                                            (context, index) {
                                                          Listavatar1ItemModel
                                                              model =
                                                              groupChatModelObj
                                                                          ?.listavatar1ItemList[
                                                                      index] ??
                                                                  Listavatar1ItemModel();
                                                          return Listavatar1ItemWidget(
                                                              model);
                                                        });
                                                  })),
                                          Padding(
                                              padding: getPadding(
                                                  top: 29, right: 73),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Row(children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgAvatar18x184,
                                                          height: getSize(18),
                                                          width: getSize(18),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      6))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 8, top: 1),
                                                          child: Text(
                                                              "lbl_gunther_ackner"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold14Gray900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 3),
                                                          child: Text(
                                                              "lbl_4min".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular12))
                                                    ]),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 26,
                                                                top: 10),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgPhoto275x80,
                                                                      height:
                                                                          getSize(
                                                                              68),
                                                                      width:
                                                                          getSize(
                                                                              68),
                                                                      radius: BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(8))),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgPhoto368x681,
                                                                      height:
                                                                          getSize(
                                                                              68),
                                                                      width:
                                                                          getSize(
                                                                              68),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              8)),
                                                                      margin: getMargin(
                                                                          left:
                                                                              8)),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgPhoto49x491,
                                                                      height:
                                                                          getSize(
                                                                              68),
                                                                      width:
                                                                          getSize(
                                                                              68),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              8)),
                                                                      margin: getMargin(
                                                                          left:
                                                                              8))
                                                                ])))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  top: 30, right: 58),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Row(children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgAvatar18x185,
                                                          height: getSize(18),
                                                          width: getSize(18),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      6))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 8),
                                                          child: Text(
                                                              "lbl_anne_carry"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold14Gray900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 3,
                                                              bottom: 3),
                                                          child: Text(
                                                              "lbl_4min".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular12))
                                                    ]),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                            margin: getMargin(
                                                                left: 26,
                                                                top: 8),
                                                            padding: getPadding(
                                                                all: 8),
                                                            decoration: AppDecoration
                                                                .fillGray100cc
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder12),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgPlay28x28,
                                                                      height:
                                                                          getSize(
                                                                              28),
                                                                      width: getSize(
                                                                          28)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              12,
                                                                          bottom:
                                                                              12),
                                                                      child: SizedBox(
                                                                          width: getHorizontalSize(
                                                                              158),
                                                                          child: Divider(
                                                                              height: getVerticalSize(4),
                                                                              thickness: getVerticalSize(4),
                                                                              color: ColorConstant.gray5007e,
                                                                              indent: getHorizontalSize(8)))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              7,
                                                                          top:
                                                                              6,
                                                                          bottom:
                                                                              6),
                                                                      child: Text(
                                                                          "lbl_0_06"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterRegular12))
                                                                ])))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  top: 29, right: 41),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Row(children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgAvatar18x186,
                                                          height: getSize(18),
                                                          width: getSize(18),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      6))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 8),
                                                          child: Text(
                                                              "lbl_gunther_ackner"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold14Gray900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1,
                                                              bottom: 2),
                                                          child: Text(
                                                              "lbl_4min".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular12))
                                                    ]),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 11),
                                                            child: Text(
                                                                "msg_i_found_some_ne"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular14Gray500)))
                                                  ])),
                                          BlocSelector<
                                                  GroupChatBloc,
                                                  GroupChatState,
                                                  TextEditingController?>(
                                              selector: (state) =>
                                                  state.writeBoxOneController,
                                              builder: (context,
                                                  writeBoxOneController) {
                                                return CustomTextFormField(
                                                    focusNode: FocusNode(),
                                                    controller:
                                                        writeBoxOneController,
                                                    hintText:
                                                        "lbl_start_typing".tr,
                                                    margin: getMargin(top: 35),
                                                    variant: TextFormFieldVariant
                                                        .FillGray100cc,
                                                    shape: TextFormFieldShape
                                                        .RoundedBorder12,
                                                    padding: TextFormFieldPadding
                                                        .PaddingT19,
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    prefix: Container(
                                                        padding:
                                                            getPadding(all: 7),
                                                        margin:
                                                            getMargin(all: 15),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .indigoA200,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        9))),
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgMinimize14x14)),
                                                    prefixConstraints:
                                                        BoxConstraints(
                                                            maxHeight:
                                                                getVerticalSize(58)),
                                                    suffix: Container(margin: getMargin(left: 30, top: 20, right: 20, bottom: 20), child: CustomImageView(svgPath: ImageConstant.imgUser18x18)),
                                                    suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(58)));
                                              })
                                        ])))
                          ]))
                    ]))));
  }

  onTapVideoCamera(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.videoChatScreen,
    );
  }

  onTapArrowleft2(BuildContext context) {
    NavigatorService.goBack();
  }
}
