import '../search_page/widgets/search_item_widget.dart';
import 'bloc/search_bloc.dart';
import 'models/search_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => SearchBloc(SearchState(
        searchModelObj: SearchModel(),
      ))
        ..add(SearchInitialEvent()),
      child: SearchPage(),
    );
  }
}

class _SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin<SearchPage> {
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
                child: BlocSelector<SearchBloc, SearchState, SearchModel?>(
                  selector: (state) => state.searchModelObj,
                  builder: (context, searchModelObj) {
                    return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          230,
                        ),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(
                          11,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          11,
                        ),
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: searchModelObj?.searchItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        SearchItemModel model =
                            searchModelObj?.searchItemList[index] ??
                                SearchItemModel();
                        return SearchItemWidget(
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
