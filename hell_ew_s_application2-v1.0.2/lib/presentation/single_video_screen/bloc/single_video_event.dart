// ignore_for_file: must_be_immutable

part of 'single_video_bloc.dart';

@immutable
abstract class SingleVideoEvent extends Equatable {}

class SingleVideoInitialEvent extends SingleVideoEvent {
  @override
  List<Object?> get props => [];
}
