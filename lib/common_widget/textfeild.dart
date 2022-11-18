import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  String hintText, labelText;
  TextEditingController controller;
  Color hintColor;
  TextAlign textAlign;
  TextInputType textInputType;
  TextAlignVertical textAlignVertical;
  TextInputAction textInputAction;
  bool isHide;
  double borderRadius, pTop, pLeft, pRight, pBottom;

  CommonTextField({
    required this.controller,
    this.hintText = '',
    this.labelText = '',
    this.hintColor = Colors.grey,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.textAlignVertical = TextAlignVertical.top,
    this.isHide = false,
    this.textAlign = TextAlign.start,
    this.borderRadius = 0,
    this.pTop = 0.0,
    this.pBottom = 0.0,
    this.pLeft = 0.0,
    this.pRight = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: textAlign,
      obscureText: isHide,
      textAlignVertical: textAlignVertical,
      decoration: InputDecoration(
          labelText: labelText,
          contentPadding: EdgeInsets.fromLTRB(pLeft, pTop, pRight, pBottom),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
          hintText: hintText,
          hintStyle: TextStyle(color: hintColor)),
    );
  }
}
