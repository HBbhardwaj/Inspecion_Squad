import 'package:flutter/material.dart';

import '../../constant/app_font_family.dart';

class CustomText extends StatelessWidget {
  String txt;
  Color? colour;
  double? fontSize, textHeight;
  bool? bold = false;
  FontWeight fontWeight;
  // int? alignment;
  TextAlign alignment;
  TextDecoration textDecoration;
  FontStyle fontStyle;
  String fontFamily;
  TextOverflow textOverflow;

  CustomText(
      {Key? key,
      required this.txt,
      this.colour,
      this.fontSize,
      this.bold,
      required this.alignment,
      this.fontWeight = FontWeight.normal,
      this.fontFamily = proximaNova,
      this.fontStyle = FontStyle.normal,
      this.textDecoration = TextDecoration.none,
      this.textHeight = 1.0,
      this.textOverflow = TextOverflow.visible})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: alignment,
      overflow: textOverflow,
      // overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize,
        color: colour,
        fontWeight: bold == true ? FontWeight.bold : fontWeight,
        fontFamily: bold == true ? sansSerifBldFLF : fontFamily,
        decoration: textDecoration,
        fontStyle: fontStyle,
        height: textHeight,
      ),
    );
  }
}
