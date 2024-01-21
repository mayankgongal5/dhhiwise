import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      default:
        return getPadding(
          all: 10,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.OutlineBluegray2003f:
        return ColorConstant.lightBlue20033;
      case IconButtonVariant.FillLightblue200:
        return ColorConstant.lightBlue200;
      case IconButtonVariant.FillIndigoA200:
        return ColorConstant.indigoA200;
      case IconButtonVariant.FillWhiteA70033:
        return ColorConstant.whiteA70033;
      case IconButtonVariant.FillGray900:
        return ColorConstant.gray900;
      case IconButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillRedA200:
        return ColorConstant.redA200;
      case IconButtonVariant.OutlineGray50033:
      case IconButtonVariant.OutlineGray50066:
        return null;
      default:
        return null;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineGray50066:
        return Border.all(
          color: ColorConstant.gray50066,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case IconButtonVariant.OutlineBluegray2003f:
      case IconButtonVariant.FillLightblue200:
      case IconButtonVariant.FillIndigoA200:
      case IconButtonVariant.FillWhiteA70033:
      case IconButtonVariant.FillGray900:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillRedA200:
        return null;
      default:
        return Border.all(
          color: ColorConstant.gray50033,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBluegray2003f:
        return [
          BoxShadow(
            color: ColorConstant.blueGray2003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ];
      case IconButtonVariant.OutlineGray50033:
      case IconButtonVariant.FillLightblue200:
      case IconButtonVariant.FillIndigoA200:
      case IconButtonVariant.FillWhiteA70033:
      case IconButtonVariant.FillGray900:
      case IconButtonVariant.OutlineGray50066:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillRedA200:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  RoundedBorder12,
}

enum IconButtonPadding {
  PaddingAll11,
  PaddingAll15,
}

enum IconButtonVariant {
  OutlineGray50033,
  OutlineBluegray2003f,
  FillLightblue200,
  FillIndigoA200,
  FillWhiteA70033,
  FillGray900,
  OutlineGray50066,
  FillWhiteA700,
  FillRedA200,
}
