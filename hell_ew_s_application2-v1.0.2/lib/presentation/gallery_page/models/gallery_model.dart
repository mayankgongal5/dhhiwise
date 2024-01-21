import 'package:equatable/equatable.dart';
import 'gallery_item_model.dart';

// ignore: must_be_immutable
class GalleryModel extends Equatable {
  GalleryModel({this.galleryItemList = const []});

  List<GalleryItemModel> galleryItemList;

  GalleryModel copyWith({List<GalleryItemModel>? galleryItemList}) {
    return GalleryModel(
      galleryItemList: galleryItemList ?? this.galleryItemList,
    );
  }

  @override
  List<Object?> get props => [galleryItemList];
}
