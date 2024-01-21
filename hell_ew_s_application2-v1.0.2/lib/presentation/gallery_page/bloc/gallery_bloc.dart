import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/gallery_item_model.dart';
import 'package:hell_ew_s_application2/presentation/gallery_page/models/gallery_model.dart';
part 'gallery_event.dart';
part 'gallery_state.dart';

class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  GalleryBloc(GalleryState initialState) : super(initialState) {
    on<GalleryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GalleryInitialEvent event,
    Emitter<GalleryState> emit,
  ) async {
    emit(state.copyWith(
        galleryModelObj: state.galleryModelObj?.copyWith(
      galleryItemList: fillGalleryItemList(),
    )));
  }

  List<GalleryItemModel> fillGalleryItemList() {
    return List.generate(12, (index) => GalleryItemModel());
  }
}
