// ignore_for_file: must_be_immutable

part of 'single_post_bloc.dart';

class SinglePostState extends Equatable {
  SinglePostState({this.singlePostModelObj});

  SinglePostModel? singlePostModelObj;

  @override
  List<Object?> get props => [
        singlePostModelObj,
      ];
  SinglePostState copyWith({SinglePostModel? singlePostModelObj}) {
    return SinglePostState(
      singlePostModelObj: singlePostModelObj ?? this.singlePostModelObj,
    );
  }
}
