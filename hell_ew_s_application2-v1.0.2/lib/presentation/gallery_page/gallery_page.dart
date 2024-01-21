import '../gallery_page/widgets/gallery_item_widget.dart';
import 'bloc/gallery_bloc.dart';
import 'models/gallery_item_model.dart';
import 'models/gallery_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<GalleryBloc>(
      create: (context) => GalleryBloc(GalleryState(
        galleryModelObj: GalleryModel(),
      ))
        ..add(GalleryInitialEvent()),
      child: GalleryPage(),
    );
  }
}

class _GalleryPageState extends State<GalleryPage>
    with AutomaticKeepAliveClientMixin<GalleryPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 28,
                  top: 30,
                  right: 28,
                ),
                child: BlocSelector<GalleryBloc, GalleryState, GalleryModel?>(
                  selector: (state) => state.galleryModelObj,
                  builder: (context, galleryModelObj) {
                    return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          100,
                        ),
                        crossAxisCount: 3,
                        mainAxisSpacing: getHorizontalSize(
                          11,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          11,
                        ),
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: galleryModelObj?.galleryItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        GalleryItemModel model =
                            galleryModelObj?.galleryItemList[index] ??
                                GalleryItemModel();
                        return GalleryItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
