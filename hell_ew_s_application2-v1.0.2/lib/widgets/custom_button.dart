import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll8:
        return getPadding(
          all: 6,
        );
      case ButtonPadding.PaddingAll19:
        return getPadding(
          all: 20,
        );
      case ButtonPadding.PaddingT5_1:
        return getPadding(
          left: 6,
          top: 6,
          bottom: 6,
        );
      case ButtonPadding.PaddingT20:
        return getPadding(
          top: 20,
          right: 20,
          bottom: 20,
        );
      default:
        return getPadding(
          top: 6,
          right: 6,
          bottom: 6,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillIndigoA200:
        return ColorConstant.indigoA200;
      case ButtonVariant.FillGray9006c:
        return ColorConstant.gray9006c;
      case ButtonVariant.FillWhiteA70033:
        return ColorConstant.whiteA70033;
      case ButtonVariant.FillGray50033:
        return ColorConstant.gray50033;
      case ButtonVariant.OutlineGray50066:
      case ButtonVariant.OutlineGray5006c:
        return null;
      default:
        return ColorConstant.green400;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray50066:
        return BorderSide(
          color: ColorConstant.gray50066,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineGray5006c:
        return BorderSide(
          color: ColorConstant.gray5006c,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.FillGreen400:
      case ButtonVariant.FillIndigoA200:
      case ButtonVariant.FillGray9006c:
      case ButtonVariant.FillWhiteA70033:
      case ButtonVariant.FillGray50033:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder29:
        return BorderRadius.circular(
          getHorizontalSize(
            29.00,
          ),
        );
      case ButtonShape.RoundedBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.InterBold14WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.21,
          ),
        );
      case ButtonFontStyle.InterBold14Gray900_1:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.21,
          ),
        );
      case ButtonFontStyle.InterMedium14:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.21,
          ),
        );
      case ButtonFontStyle.SFProDisplayBold14WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.21,
          ),
        );
      case ButtonFontStyle.SFProDisplayBold14Gray900_1:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.21,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.21,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder4,
  CircleBorder29,
  RoundedBorder12,
}

enum ButtonPadding {
  PaddingAll8,
  PaddingT5,
  PaddingAll19,
  PaddingT5_1,
  PaddingT20,
}

enum ButtonVariant {
  FillGreen400,
  FillIndigoA200,
  OutlineGray50066,
  OutlineGray5006c,
  FillGray9006c,
  FillWhiteA70033,
  FillGray50033,
}

enum ButtonFontStyle {
  InterMedium14WhiteA700,
  InterBold14WhiteA700,
  InterBold14Gray900_1,
  InterMedium14,
  SFProDisplayBold14WhiteA700,
  SFProDisplayBold14Gray900_1,
}
