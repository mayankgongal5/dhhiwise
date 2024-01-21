import '../events_page/widgets/events_item_widget.dart';
import 'bloc/events_bloc.dart';
import 'models/events_item_model.dart';
import 'models/events_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<EventsBloc>(
      create: (context) => EventsBloc(EventsState(
        eventsModelObj: EventsModel(),
      ))
        ..add(EventsInitialEvent()),
      child: EventsPage(),
    );
  }
}

class _EventsPageState extends State<EventsPage>
    with AutomaticKeepAliveClientMixin<EventsPage> {
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
                padding: getPadding(
                  left: 28,
                  top: 26,
                  right: 28,
                ),
                child: BlocSelector<EventsBloc, EventsState, EventsModel?>(
                  selector: (state) => state.eventsModelObj,
                  builder: (context, eventsModelObj) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            18,
                          ),
                        );
                      },
                      itemCount: eventsModelObj?.eventsItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        EventsItemModel model =
                            eventsModelObj?.eventsItemList[index] ??
                                EventsItemModel();
                        return EventsItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
