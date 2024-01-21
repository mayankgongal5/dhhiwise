import 'package:equatable/equatable.dart';
import 'single_event_item_model.dart';

// ignore: must_be_immutable
class SingleEventModel extends Equatable {
  SingleEventModel({this.singleEventItemList = const []});

  List<SingleEventItemModel> singleEventItemList;

  SingleEventModel copyWith({List<SingleEventItemModel>? singleEventItemList}) {
    return SingleEventModel(
      singleEventItemList: singleEventItemList ?? this.singleEventItemList,
    );
  }

  @override
  List<Object?> get props => [singleEventItemList];
}
