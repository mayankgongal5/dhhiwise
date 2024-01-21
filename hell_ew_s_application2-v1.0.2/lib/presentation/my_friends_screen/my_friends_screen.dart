import '../my_friends_screen/widgets/my_friends_item_widget.dart';
import 'bloc/my_friends_bloc.dart';
import 'models/my_friends_item_model.dart';
import 'models/my_friends_model.dart';
import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';
import 'package:hell_ew_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hell_ew_s_application2/widgets/custom_icon_button.dart';
import 'package:hell_ew_s_application2/widgets/custom_text_form_field.dart';

class MyFriendsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<MyFriendsBloc>(
        create: (context) =>
            MyFriendsBloc(MyFriendsState(myFriendsModelObj: MyFriendsModel()))
              ..add(MyFriendsInitialEvent()),
        child: MyFriendsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(top: 10, bottom: 10),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomAppBar(
                                        height: getVerticalSize(64),
                                        leadingWidth: 66,
                                        leading: CustomIconButton(
                                            height: 38,
                                            width: 38,
                                            margin: getMargin(
                                                left: 28, top: 5, bottom: 5),
                                            variant: IconButtonVariant
                                                .FillIndigoA200,
                                            onTap: () {
                                              onTapBtnArrowleft(context);
                                            },
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleftWhiteA700)),
                                        title: BlocSelector<
                                                MyFriendsBloc,
                                                MyFriendsState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.fieldController,
                                            builder:
                                                (context, fieldController) {
                                              return CustomTextFormField(
                                                  width: getHorizontalSize(271),
                                                  focusNode: FocusNode(),
                                                  controller: fieldController,
                                                  hintText:
                                                      "msg_search_in_frien".tr,
                                                  margin: getMargin(left: 10),
                                                  variant: TextFormFieldVariant
                                                      .FillGray5006c,
                                                  padding: TextFormFieldPadding
                                                      .PaddingT15_2,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  prefix: Container(
                                                      margin: getMargin(
                                                          left: 15,
                                                          top: 16,
                                                          right: 10,
                                                          bottom: 16),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgSearchGray500)),
                                                  prefixConstraints:
                                                      BoxConstraints(
                                                          maxHeight:
                                                              getVerticalSize(
                                                                  48)));
                                            }))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 28, top: 16, right: 28),
                          child: BlocSelector<MyFriendsBloc, MyFriendsState,
                                  MyFriendsModel?>(
                              selector: (state) => state.myFriendsModelObj,
                              builder: (context, myFriendsModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(8));
                                    },
                                    itemCount: myFriendsModelObj
                                            ?.myFriendsItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      MyFriendsItemModel model =
                                          myFriendsModelObj
                                                  ?.myFriendsItemList[index] ??
                                              MyFriendsItemModel();
                                      return MyFriendsItemWidget(model);
                                    });
                              }))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
