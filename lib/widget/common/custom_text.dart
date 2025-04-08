import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

enum TextColorEnum {
  main,
  sub;

  Color color(Brightness brightness) => switch (this) {
        TextColorEnum.main => brightness == Brightness.light
            ? const Color(0xFF1D1D1F)
            : Colors.white,
        TextColorEnum.sub => brightness == Brightness.light
            ? const Color(0xFF6E6E73)
            : const Color(0xFFCACACA),
      };
}

enum FontWeightEnum {
  regular,
  bold;

  FontWeight get value => switch (this) {
        FontWeightEnum.regular => FontWeight.w500,
        FontWeightEnum.bold => FontWeight.w700,
      };
}

class CustomText extends StatelessWidget {
  const CustomText._(
    this.data, {
    required this.fontSize,
    required this.fontWeight,
    required this.textColor,
  });

  final String data;
  final double fontSize;
  final FontWeightEnum fontWeight;
  final TextColorEnum textColor;

  factory CustomText.regular(
    String data, {
    required double fontSize,
    TextColorEnum textColor = TextColorEnum.main,
  }) {
    return CustomText._(
      data,
      fontSize: fontSize,
      fontWeight: FontWeightEnum.regular,
      textColor: textColor,
    );
  }

  factory CustomText.bold(
    String data, {
    required double fontSize,
    TextColorEnum textColor = TextColorEnum.main,
  }) {
    return CustomText._(
      data,
      fontSize: fontSize,
      fontWeight: FontWeightEnum.bold,
      textColor: textColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    final brightness = context.theme.brightness;
    return Text(
      data,
      style: CustomTextTheme.regularTextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight.value,
        color: textColor.color(brightness),
      ),
    );
  }
}
