import 'package:flutter/material.dart';
import 'package:furniture_app/utilities/utilities.dart';
import 'package:furniture_app/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextDisplay extends StatelessWidget {
  final String translation;
  final String text;
  final TextAlign textAlign;
  final TextStyle textStyle;
  final int maxLines;

  AppTextDisplay({
    this.translation = '',
    this.text = '',
    this.textAlign = TextAlign.center,
    this.textStyle,
    this.maxLines = 1,
  }) : assert(translation != '' || text != '');

  @override
  Widget build(BuildContext context) {
    return Text(
      translation == ''
          ? text
          : AppLocalizations.of(context).translate(translation),
      textAlign: textAlign,
      softWrap: true,
      style: textStyle ?? GoogleFonts.quicksand(),
      maxLines: maxLines,
    );
  }
}
