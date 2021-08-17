import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class MyStyledTextWidget extends StatelessWidget {
  final String msg;

  MyStyledTextWidget({required this.msg});

  @override
  Widget build(BuildContext context) {
    return Text(
      msg,
      style: GoogleFonts.lato(textStyle: kTextStyle),
    );
  }
}
