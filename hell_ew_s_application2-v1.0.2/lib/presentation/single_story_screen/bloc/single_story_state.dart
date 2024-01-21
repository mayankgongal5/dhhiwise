// ignore_for_file: must_be_immutable

part of 'single_story_bloc.dart';

class SingleStoryState extends Equatable {
  SingleStoryState({
    this.frameTwoController,
    this.singleStoryModelObj,
  });

  TextEditingController? frameTwoController;

  SingleStoryModel? singleStoryModelObj;

  @override
  List<Object?> get props => [
        frameTwoController,
        singleStoryModelObj,
      ];
  SingleStoryState copyWith({
    TextEditingController? frameTwoController,
    SingleStoryModel? singleStoryModelObj,
  }) {
    return SingleStoryState(
      frameTwoController: frameTwoController ?? this.frameTwoController,
      singleStoryModelObj: singleStoryModelObj ?? this.singleStoryModelObj,
    );
  }
}
