import 'bloc/search_tab_container_bloc.dart';
import 'models/search_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';
import 'package:hell_ew_s_application2/presentation/search_page/search_page.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hell_ew_s_application2/widgets/custom_search_view.dart';

class SearchTabContainerScreen extends StatefulWidget {
  @override
  _SearchTabContainerScreenState createState() =>
      _SearchTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchTabContainerBloc>(
        create: (context) => SearchTabContainerBloc(SearchTabContainerState(
            searchTabContainerModelObj: SearchTabContainerModel()))
          ..add(SearchTabContainerInitialEvent()),
        child: SearchTabContainerScreen());
  }

  onTapArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}

// ignore_for_file: must_be_immutable
class _SearchTabContainerScreenState extends State<SearchTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchTabContainerBloc, SearchTabContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray900,
              appBar: CustomAppBar(
                  height: getVerticalSize(72),
                  leadingWidth: 66,
                  leading: AppbarImage(
                      height: getSize(38),
                      width: getSize(38),
                      svgPath:
                          ImageConstant.img29e10bc5c8e94190bb789e12a33570e3,
                      margin: getMargin(left: 28, top: 9, bottom: 8),
                      onTap: () {
                        onTapArrowleft(context);
                      }),
                  title: BlocSelector<SearchTabContainerBloc,
                          SearchTabContainerState, TextEditingController?>(
                      selector: (state) => state.fieldController,
                      builder: (context, fieldController) {
                        return CustomSearchView(
                            width: getHorizontalSize(271),
                            focusNode: FocusNode(),
                            controller: fieldController,
                            hintText: "msg_search_in_socia".tr,
                            margin: getMargin(left: 10),
                            prefix: Container(
                                margin: getMargin(
                                    left: 15, top: 11, right: 10, bottom: 11),
                                child: CustomImageView(
                                    svgPath: ImageConstant
                                        .img8082afb05720484ba3e97f5f2d4c3841)),
                            prefixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(39)),
                            suffix: Padding(
                                padding: EdgeInsets.only(
                                    right: getHorizontalSize(15)),
                                child: IconButton(
                                    onPressed: () {
                                      fieldController!.clear();
                                    },
                                    icon: Icon(Icons.clear,
                                        color: Colors.grey.shade600))));
                      })),
              body: Container(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 28, top: 43),
                            child: Text("lbl_explore_stories".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold22WhiteA700)),
                        Container(
                            height: getVerticalSize(28),
                            width: getHorizontalSize(347),
                            margin: getMargin(top: 27),
                            child: TabBar(controller: tabController, tabs: [
                              Tab(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                    Text("lbl_for_you".tr,
                                        overflow: TextOverflow.ellipsis),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgDot,
                                        height: getVerticalSize(2),
                                        width: getHorizontalSize(48),
                                        margin: getMargin(top: 7))
                                  ])),
                              Tab(
                                  child: Text("lbl_following".tr,
                                      overflow: TextOverflow.ellipsis)),
                              Tab(
                                  child: Text("lbl_popular".tr,
                                      overflow: TextOverflow.ellipsis)),
                              Tab(
                                  child: Text("lbl_featured".tr,
                                      overflow: TextOverflow.ellipsis)),
                              Tab(
                                  child: Text("lbl_live".tr,
                                      overflow: TextOverflow.ellipsis))
                            ])),
                        Container(
                            height: getVerticalSize(569),
                            child: TabBarView(
                                controller: tabController,
                                children: [
                                  SearchPage.builder(context),
                                  SearchPage.builder(context),
                                  SearchPage.builder(context),
                                  SearchPage.builder(context),
                                  SearchPage.builder(context)
                                ]))
                      ]))));
    });
  }

  onTapArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
