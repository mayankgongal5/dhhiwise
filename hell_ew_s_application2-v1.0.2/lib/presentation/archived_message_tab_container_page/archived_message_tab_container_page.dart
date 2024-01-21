import 'bloc/archived_message_tab_container_bloc.dart';
import 'models/archived_message_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';
import 'package:hell_ew_s_application2/presentation/archived_message_page/archived_message_page.dart';
import 'package:hell_ew_s_application2/presentation/messages_page/messages_page.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/appbar_iconbutton.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ArchivedMessageTabContainerPage extends StatefulWidget {
  @override
  _ArchivedMessageTabContainerPageState createState() =>
      _ArchivedMessageTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ArchivedMessageTabContainerBloc>(
      create: (context) =>
          ArchivedMessageTabContainerBloc(ArchivedMessageTabContainerState(
        archivedMessageTabContainerModelObj: ArchivedMessageTabContainerModel(),
      ))
            ..add(ArchivedMessageTabContainerInitialEvent()),
      child: ArchivedMessageTabContainerPage(),
    );
  }
}

class _ArchivedMessageTabContainerPageState
    extends State<ArchivedMessageTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArchivedMessageTabContainerBloc,
        ArchivedMessageTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
              height: getVerticalSize(
                68,
              ),
              leadingWidth: 66,
              leading: AppbarIconbutton(
                svgPath: ImageConstant.imgSearchGray900,
                margin: getMargin(
                  left: 28,
                  top: 15,
                  bottom: 15,
                ),
              ),
              centerTitle: true,
              title: AppbarTitle(
                text: "lbl_home".tr,
              ),
              actions: [
                AppbarIconbutton(
                  svgPath: ImageConstant.imgNotificationWhiteA700,
                  margin: getMargin(
                    left: 28,
                    top: 15,
                    right: 28,
                    bottom: 15,
                  ),
                ),
              ],
              styleType: Style.bgFillWhiteA700,
            ),
            body: Container(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      25,
                    ),
                    width: getHorizontalSize(
                      308,
                    ),
                    margin: getMargin(
                      top: 33,
                    ),
                    child: TabBar(
                      controller: tabController,
                      labelColor: ColorConstant.gray900,
                      labelStyle: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                      unselectedLabelColor: ColorConstant.gray90066,
                      unselectedLabelStyle: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                      indicatorColor: ColorConstant.gray900,
                      tabs: [
                        Tab(
                          child: Text(
                            "lbl_direct_messages".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_group_chat".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_archived".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      517,
                    ),
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        MessagesPage.builder(context),
                        MessagesPage.builder(context),
                        ArchivedMessagePage.builder(context),
                      ],
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
