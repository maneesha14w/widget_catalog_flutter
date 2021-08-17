import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/constants.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class AspectRatioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: 350.0,
          child: Align(
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio: 1.9,
              child: Card(
                color: kLighterColour,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyStyledTextWidget(
                    msg:
                        'The widget first tries the largest width permitted by the layout constraints (16/9).'
                        ' The height of the widget is determined by applying the given aspect ratio to the width, expressed as a ratio of width to height.',
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
