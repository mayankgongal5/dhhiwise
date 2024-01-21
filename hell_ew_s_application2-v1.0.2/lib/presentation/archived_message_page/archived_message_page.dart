import '../archived_message_page/widgets/listavatar_item_widget.dart';
import 'bloc/archived_message_bloc.dart';
import 'models/archived_message_model.dart';
import 'models/listavatar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';

class ArchivedMessagePage extends StatefulWidget {
  @override
  _ArchivedMessagePageState createState() => _ArchivedMessagePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ArchivedMessageBloc>(
        create: (context) => ArchivedMessageBloc(ArchivedMessageState(
            archivedMessageModelObj: ArchivedMessageModel()))
          ..add(ArchivedMessageInitialEvent()),
        child: ArchivedMessagePage());
  }

  onTapMessage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.groupChatScreen,
    );
  }
}

class _ArchivedMessagePageState extends State<ArchivedMessagePage>
    with AutomaticKeepAliveClientMixin<ArchivedMessagePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 28, top: 31, right: 28),
                          child: BlocSelector<ArchivedMessageBloc,
                                  ArchivedMessageState, ArchivedMessageModel?>(
                              selector: (state) =>
                                  state.archivedMessageModelObj,
                              builder: (context, archivedMessageModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(39));
                                    },
                                    itemCount: archivedMessageModelObj
                                            ?.listavatarItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ListavatarItemModel model =
                                          archivedMessageModelObj
                                                  ?.listavatarItemList[index] ??
                                              ListavatarItemModel();
                                      return ListavatarItemWidget(model,
                                          onTapMessage: () {
                                        onTapMessage(context);
                                      });
                                    });
                              }))
                    ]))));
  }

  onTapMessage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.groupChatScreen,
    );
  }
}
