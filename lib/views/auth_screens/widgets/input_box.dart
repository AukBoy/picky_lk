// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '/utils/color_resources.dart';

class InputBox extends StatelessWidget {
  InputBox({
    required this.feildName,
    super.key,
  });

  String feildName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorResources.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorResources.loginBorderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorResources.loginBorderColor,
          ),
        ),
        hintText: feildName,
      ),
    );
  }
}
