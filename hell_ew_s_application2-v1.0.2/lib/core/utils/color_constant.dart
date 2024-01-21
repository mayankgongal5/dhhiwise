import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray2003f = fromHex('#3fa7b4cb');

  static Color lightBlue200 = fromHex('#79d0f1');

  static Color gray5007e = fromHex('#7e8f92a1');

  static Color blueA700 = fromHex('#0659fd');

  static Color gray900Cc = fromHex('#cc1e1f20');

  static Color indigoA200 = fromHex('#666aec');

  static Color gray9006c = fromHex('#6c1e1f20');

  static Color green400 = fromHex('#53d769');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color black900 = fromHex('#000000');

  static Color gray50066 = fromHex('#668f92a1');

  static Color gray100Cc = fromHex('#ccf7f7f7');

  static Color gray50048 = fromHex('#488f92a1');

  static Color gray90024 = fromHex('#241e1f20');

  static Color gray5006c = fromHex('#6c8f92a1');

  static Color gray500 = fromHex('#8f92a1');

  static Color blueGray400 = fromHex('#888888');

  static Color gray90000 = fromHex('#001e1f20');

  static Color whiteA700A2 = fromHex('#a2ffffff');

  static Color gray90066 = fromHex('#661e1f20');

  static Color redA200 = fromHex('#ff4e4e');

  static Color gray900 = fromHex('#1e1f20');

  static Color lightBlue20033 = fromHex('#3379d0f1');

  static Color gray100 = fromHex('#f7f7f7');

  static Color whiteA70048 = fromHex('#48ffffff');

  static Color gray10001 = fromHex('#f2f2f2');

  static Color gray50033 = fromHex('#338f92a1');

  static Color gray50099 = fromHex('#998f92a1');

  static Color whiteA700 = fromHex('#ffffff');

  static Color whiteA7005a = fromHex('#5affffff');

  static Color indigo600 = fromHex('#39579b');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
