import 'bloc/home_container_bloc.dart';
import 'models/home_container_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';
import 'package:hell_ew_s_application2/presentation/archived_message_tab_container_page/archived_message_tab_container_page.dart';
import 'package:hell_ew_s_application2/presentation/events_tab_container_page/events_tab_container_page.dart';
import 'package:hell_ew_s_application2/presentation/home_page/home_page.dart';
import 'package:hell_ew_s_application2/presentation/new_post_page/new_post_page.dart';
import 'package:hell_ew_s_application2/presentation/user_profile_tab_container_page/user_profile_tab_container_page.dart';
import 'package:hell_ew_s_application2/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeContainerBloc>(
        create: (context) => HomeContainerBloc(
            HomeContainerState(homeContainerModelObj: HomeContainerModel()))
          ..add(HomeContainerInitialEvent()),
        child: HomeContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeContainerBloc, HomeContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray100,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.homePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Calendar:
        return AppRoutes.eventsTabContainerPage;
      case BottomBarEnum.Grid:
        return AppRoutes.newPostPage;
      case BottomBarEnum.Mail:
        return AppRoutes.archivedMessageTabContainerPage;
      case BottomBarEnum.User:
        return AppRoutes.userProfileTabContainerPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.eventsTabContainerPage:
        return EventsTabContainerPage.builder(context);
      case AppRoutes.newPostPage:
        return NewPostPage.builder(context);
      case AppRoutes.archivedMessageTabContainerPage:
        return ArchivedMessageTabContainerPage.builder(context);
      case AppRoutes.userProfileTabContainerPage:
        return UserProfileTabContainerPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
