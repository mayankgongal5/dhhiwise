// ignore_for_file: must_be_immutable

part of 'video_chat_bloc.dart';

@immutable
abstract class VideoChatEvent extends Equatable {}

class VideoChatInitialEvent extends VideoChatEvent {
  @override
  List<Object?> get props => [];
}
