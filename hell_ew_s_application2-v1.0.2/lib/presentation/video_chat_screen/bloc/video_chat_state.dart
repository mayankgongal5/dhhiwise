// ignore_for_file: must_be_immutable

part of 'video_chat_bloc.dart';

class VideoChatState extends Equatable {
  VideoChatState({this.videoChatModelObj});

  VideoChatModel? videoChatModelObj;

  @override
  List<Object?> get props => [
        videoChatModelObj,
      ];
  VideoChatState copyWith({VideoChatModel? videoChatModelObj}) {
    return VideoChatState(
      videoChatModelObj: videoChatModelObj ?? this.videoChatModelObj,
    );
  }
}
