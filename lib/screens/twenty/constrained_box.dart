import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/constants.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class ConstrainedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(
                new Size(350.0, 300.0),
              ),
              child: Card(
                color: kLighterColour,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: MyStyledTextWidget(
                    msg:
                        'A widget that imposes additional constraints on its child. \n\n'
                        'For example, if you wanted child to have a minimum height of 50.0 '
                        'logical pixels, you could use const BoxConstraints(minHeight: 50.0) as the constraints. \n\n'
                        'I used BoxConstraints.tight() with a custom size',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
