import '../messages_page/widgets/messages_item_widget.dart';
import 'bloc/messages_bloc.dart';
import 'models/messages_item_model.dart';
import 'models/messages_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MessagesBloc>(
        create: (context) =>
            MessagesBloc(MessagesState(messagesModelObj: MessagesModel()))
              ..add(MessagesInitialEvent()),
        child: MessagesPage());
  }

  onTapMessage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chatScreen,
    );
  }
}

class _MessagesPageState extends State<MessagesPage>
    with AutomaticKeepAliveClientMixin<MessagesPage> {
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
                          child: BlocSelector<MessagesBloc, MessagesState,
                                  MessagesModel?>(
                              selector: (state) => state.messagesModelObj,
                              builder: (context, messagesModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(28));
                                    },
                                    itemCount: messagesModelObj
                                            ?.messagesItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      MessagesItemModel model = messagesModelObj
                                              ?.messagesItemList[index] ??
                                          MessagesItemModel();
                                      return MessagesItemWidget(model,
                                          onTapMessage: () {
                                        onTapMessage(context);
                                      });
                                    });
                              }))
                    ]))));
  }

  onTapMessage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chatScreen,
    );
  }
}
