// ignore_for_file: must_be_immutable

part of 'gallery_bloc.dart';

@immutable
abstract class GalleryEvent extends Equatable {}

class GalleryInitialEvent extends GalleryEvent {
  @override
  List<Object?> get props => [];
}
