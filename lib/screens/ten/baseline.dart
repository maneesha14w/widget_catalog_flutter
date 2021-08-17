import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class BaselineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 400.0, left: 80.0, right: 30.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: MyStyledTextWidget(
                        msg: 'Hello',
                      ),
                    ),
                    Baseline(
                      baseline: 140.0,
                      baselineType: TextBaseline.alphabetic,
                      child: MyStyledTextWidget(
                        msg: 'world',
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 50.0, left: 10.0, right: 10.0),
                  child: MyStyledTextWidget(
                    msg:
                        'This widget shifts the child down such that the child\'s baseline (or the bottom of the child, if the child has no baseline) is baseline logical pixels below the top of this box, then sizes this box to contain the child.',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
