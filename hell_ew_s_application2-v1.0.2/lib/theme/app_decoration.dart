import 'package:flutter/material.dart';
import 'package:hell_ew_s_application2/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtFillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get fillGray100cc => BoxDecoration(
        color: ColorConstant.gray100Cc,
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get fillIndigo600 => BoxDecoration(
        color: ColorConstant.indigo600,
      );
  static BoxDecoration get txtFillRedA200 => BoxDecoration(
        color: ColorConstant.redA200,
      );
  static BoxDecoration get fillWhiteA70033 => BoxDecoration(
        color: ColorConstant.whiteA70033,
      );
  static BoxDecoration get outline => BoxDecoration();
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBlueA700 => BoxDecoration(
        color: ColorConstant.blueA700,
      );
  static BoxDecoration get gradientGray90000Gray900cc => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0,
            0,
          ),
          end: Alignment(
            0,
            1,
          ),
          colors: [
            ColorConstant.gray90000,
            ColorConstant.gray900Cc,
          ],
        ),
      );
  static BoxDecoration get txtFillGray50048 => BoxDecoration(
        color: ColorConstant.gray50048,
      );
  static BoxDecoration get outlineGray50066 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray50066,
          width: getHorizontalSize(
            2,
          ),
        ),
      );
  static BoxDecoration get outlineGray50033 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray50033,
          width: getHorizontalSize(
            2,
          ),
        ),
      );
  static BoxDecoration get txtFillGreen400 => BoxDecoration(
        color: ColorConstant.green400,
      );
  static BoxDecoration get outlineGray5006c => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray5006c,
          width: getHorizontalSize(
            2,
          ),
        ),
      );
  static BoxDecoration get txtOutlineGray5006c => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray5006c,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
}

class BorderRadiusStyle {
  static BorderRadius txtRoundedBorder9 = BorderRadius.circular(
    getHorizontalSize(
      9,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );

  static BorderRadius customBorderTL32 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        32,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        32,
      ),
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius txtRoundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius txtRoundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );

  static BorderRadius roundedBorder9 = BorderRadius.circular(
    getHorizontalSize(
      9,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
