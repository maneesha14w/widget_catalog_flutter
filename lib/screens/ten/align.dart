import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class AlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 300.0,
              height: 250.0,
              child: MyStyledTextWidget(
                msg:
                    'Alignment makes its easy to align widgets with respect to the parent. Just use the Align widget with property align: set to your preferred alignment.'
                    '\n\n Alignment.center, Alignment.bottomCenter etc.',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
