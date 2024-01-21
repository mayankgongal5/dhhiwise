import 'bloc/events_tab_container_bloc.dart';
import 'models/events_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';
import 'package:hell_ew_s_application2/presentation/events_page/events_page.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/custom_app_bar.dart';

class EventsTabContainerPage extends StatefulWidget {
  @override
  _EventsTabContainerPageState createState() => _EventsTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<EventsTabContainerBloc>(
        create: (context) => EventsTabContainerBloc(EventsTabContainerState(
            eventsTabContainerModelObj: EventsTabContainerModel()))
          ..add(EventsTabContainerInitialEvent()),
        child: EventsTabContainerPage());
  }

  onTapNotification(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsScreen,
    );
  }
}

// ignore_for_file: must_be_immutable
class _EventsTabContainerPageState extends State<EventsTabContainerPage>
    with TickerProviderStateMixin {
  late TabController group41Controller;

  @override
  void initState() {
    super.initState();
    group41Controller = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventsTabContainerBloc, EventsTabContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray100,
              appBar: CustomAppBar(
                  height: getVerticalSize(68),
                  leadingWidth: 66,
                  leading: AppbarIconbutton(
                      svgPath: ImageConstant.imgSearchGray900,
                      margin: getMargin(left: 28, top: 15, bottom: 15)),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_home".tr),
                  actions: [
                    AppbarIconbutton(
                        svgPath: ImageConstant.imgNotificationWhiteA700,
                        margin:
                            getMargin(left: 28, top: 15, right: 28, bottom: 15),
                        onTap: () {
                          onTapNotification(context);
                        })
                  ],
                  styleType: Style.bgFillWhiteA700),
              body: Container(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: getVerticalSize(26),
                            width: getHorizontalSize(409),
                            margin: getMargin(top: 37),
                            child: TabBar(
                                controller: group41Controller,
                                labelColor: ColorConstant.gray900,
                                labelStyle: TextStyle(
                                    fontSize: getFontSize(14),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700),
                                unselectedLabelColor: ColorConstant.gray90066,
                                unselectedLabelStyle: TextStyle(
                                    fontSize: getFontSize(14),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700),
                                indicatorColor: ColorConstant.gray900,
                                tabs: [
                                  Tab(
                                      child: Text("lbl_anytime".tr,
                                          overflow: TextOverflow.ellipsis)),
                                  Tab(
                                      child: Text("lbl_today".tr,
                                          overflow: TextOverflow.ellipsis)),
                                  Tab(
                                      child: Text("lbl_tomorrow".tr,
                                          overflow: TextOverflow.ellipsis)),
                                  Tab(
                                      child: Text("lbl_this_week".tr,
                                          overflow: TextOverflow.ellipsis)),
                                  Tab(
                                      child: Text("lbl_this_month".tr,
                                          overflow: TextOverflow.ellipsis))
                                ])),
                        Container(
                            height: getVerticalSize(514),
                            child: TabBarView(
                                controller: group41Controller,
                                children: [
                                  EventsPage.builder(context),
                                  EventsPage.builder(context),
                                  EventsPage.builder(context),
                                  EventsPage.builder(context),
                                  EventsPage.builder(context)
                                ]))
                      ]))));
    });
  }

  onTapNotification(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsScreen,
    );
  }
}
