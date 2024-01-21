// ignore_for_file: must_be_immutable

part of 'new_post_bloc.dart';

class NewPostState extends Equatable {
  NewPostState({
    this.languageController,
    this.newPostModelObj,
  });

  TextEditingController? languageController;

  NewPostModel? newPostModelObj;

  @override
  List<Object?> get props => [
        languageController,
        newPostModelObj,
      ];
  NewPostState copyWith({
    TextEditingController? languageController,
    NewPostModel? newPostModelObj,
  }) {
    return NewPostState(
      languageController: languageController ?? this.languageController,
      newPostModelObj: newPostModelObj ?? this.newPostModelObj,
    );
  }
}
