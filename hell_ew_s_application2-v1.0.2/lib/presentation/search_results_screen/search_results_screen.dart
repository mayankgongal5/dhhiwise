import '../search_results_screen/widgets/search_results_item_widget.dart';
import 'bloc/search_results_bloc.dart';
import 'models/search_results_item_model.dart';
import 'models/search_results_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hell_ew_s_application2/widgets/custom_button.dart';
import 'package:hell_ew_s_application2/widgets/custom_icon_button.dart';
import 'package:hell_ew_s_application2/widgets/custom_text_form_field.dart';

class SearchResultsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultsBloc>(
        create: (context) => SearchResultsBloc(
            SearchResultsState(searchResultsModelObj: SearchResultsModel()))
          ..add(SearchResultsInitialEvent()),
        child: SearchResultsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(top: 10, bottom: 10),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomAppBar(
                                        height: getVerticalSize(64),
                                        leadingWidth: 66,
                                        leading: CustomIconButton(
                                            height: 38,
                                            width: 38,
                                            margin: getMargin(
                                                left: 28, top: 5, bottom: 5),
                                            variant: IconButtonVariant
                                                .FillLightblue200,
                                            onTap: () {
                                              onTapBtnArrowleft(context);
                                            },
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleftWhiteA700)),
                                        title: BlocSelector<
                                                SearchResultsBloc,
                                                SearchResultsState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.fieldController,
                                            builder:
                                                (context, fieldController) {
                                              return CustomTextFormField(
                                                  width: getHorizontalSize(271),
                                                  focusNode: FocusNode(),
                                                  controller: fieldController,
                                                  hintText: "lbl_nass".tr,
                                                  margin: getMargin(left: 10),
                                                  variant: TextFormFieldVariant
                                                      .FillGray90024,
                                                  padding: TextFormFieldPadding
                                                      .PaddingT15_1,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .InterMedium14,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  prefix: Container(
                                                      margin: getMargin(
                                                          left: 15,
                                                          top: 16,
                                                          right: 10,
                                                          bottom: 16),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgSearchGray900)),
                                                  prefixConstraints: BoxConstraints(
                                                      maxHeight:
                                                          getVerticalSize(48)),
                                                  suffix: Container(
                                                      margin: getMargin(
                                                          left: 30,
                                                          top: 16,
                                                          right: 16,
                                                          bottom: 16),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCloseIndigoA200)),
                                                  suffixConstraints:
                                                      BoxConstraints(
                                                          maxHeight:
                                                              getVerticalSize(
                                                                  48)));
                                            }))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 28, top: 19),
                          child: Text("lbl_people".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold22)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 28, top: 12, right: 28),
                              child: BlocSelector<SearchResultsBloc,
                                      SearchResultsState, SearchResultsModel?>(
                                  selector: (state) =>
                                      state.searchResultsModelObj,
                                  builder: (context, searchResultsModelObj) {
                                    return ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(8));
                                        },
                                        itemCount: searchResultsModelObj
                                                ?.searchResultsItemList
                                                .length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          SearchResultsItemModel model =
                                              searchResultsModelObj
                                                          ?.searchResultsItemList[
                                                      index] ??
                                                  SearchResultsItemModel();
                                          return SearchResultsItemWidget(model);
                                        });
                                  }))),
                      CustomButton(
                          height: getVerticalSize(30),
                          width: getHorizontalSize(97),
                          text: "lbl_see_more".tr,
                          margin: getMargin(left: 28, top: 12),
                          variant: ButtonVariant.OutlineGray5006c,
                          padding: ButtonPadding.PaddingT5_1,
                          fontStyle: ButtonFontStyle.InterMedium14,
                          suffixWidget: Container(
                              margin: getMargin(),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowright))),
                      Padding(
                          padding: getPadding(left: 30, top: 5),
                          child: Text("lbl_posts".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold22)),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapCard03(context);
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 15, right: 26, bottom: 5),
                                  padding: getPadding(
                                      left: 18, top: 16, right: 18, bottom: 16),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 17),
                                            child: Row(children: [
                                              Container(
                                                  width: getHorizontalSize(136),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgAvatar38x384,
                                                        height:
                                                            getVerticalSize(33),
                                                        width:
                                                            getHorizontalSize(
                                                                38),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    12))),
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 8),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_katherine_cole"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterMedium14Gray900),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              5),
                                                                  child: Text(
                                                                      "lbl_5_min_ago"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular12))
                                                            ]))
                                                  ])),
                                              Padding(
                                                  padding:
                                                      getPadding(left: 126),
                                                  child: SizedBox(
                                                      height:
                                                          getVerticalSize(33),
                                                      child: VerticalDivider(
                                                          width:
                                                              getHorizontalSize(
                                                                  4),
                                                          thickness:
                                                              getVerticalSize(
                                                                  4),
                                                          color: ColorConstant
                                                              .gray500,
                                                          indent:
                                                              getHorizontalSize(
                                                                  11),
                                                          endIndent:
                                                              getHorizontalSize(
                                                                  6))))
                                            ])),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage150x2831,
                                            height: getVerticalSize(119),
                                            width: getHorizontalSize(283),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8)),
                                            margin: getMargin(top: 25)),
                                        Container(
                                            width: getHorizontalSize(276),
                                            margin:
                                                getMargin(top: 23, right: 6),
                                            child: Text(
                                                "msg_the_best_fashio".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterBold16)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 6,
                                                    top: 49,
                                                    right: 11,
                                                    bottom: 2),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFavorite1,
                                                          height: getSize(14),
                                                          width: getSize(14),
                                                          margin: getMargin(
                                                              top: 1,
                                                              bottom: 1)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Text(
                                                              "lbl_326".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium14Gray900)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgLocationGray500,
                                                          height: getSize(14),
                                                          width: getSize(14),
                                                          margin: getMargin(
                                                              left: 27,
                                                              top: 1,
                                                              bottom: 1)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 6),
                                                          child: Text(
                                                              "lbl_148".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium14Gray900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 93),
                                                          child: Text(
                                                              "lbl_share".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterMedium14Gray900)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgReply,
                                                          height: getSize(14),
                                                          width: getSize(14),
                                                          margin: getMargin(
                                                              top: 1,
                                                              bottom: 1))
                                                    ])))
                                      ]))))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapCard03(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.singlePostScreen,
    );
  }
}
