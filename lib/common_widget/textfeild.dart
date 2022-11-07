import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  String hintText;
  TextEditingController controller;
  Color hintColor;
  TextAlign textAlign;
  TextInputType textInputType;
  TextInputAction textInputAction;
  bool isHide;

  CommonTextField({
    required this.controller,
    this.hintText = '',
    this.hintColor = Colors.grey,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.isHide = false,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: textAlign,
      obscureText: isHide,
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: hintColor)),
    );
  }
}
