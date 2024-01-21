import 'package:equatable/equatable.dart';
import 'events_item_model.dart';

// ignore: must_be_immutable
class EventsModel extends Equatable {
  EventsModel({this.eventsItemList = const []});

  List<EventsItemModel> eventsItemList;

  EventsModel copyWith({List<EventsItemModel>? eventsItemList}) {
    return EventsModel(
      eventsItemList: eventsItemList ?? this.eventsItemList,
    );
  }

  @override
  List<Object?> get props => [eventsItemList];
}
