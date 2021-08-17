import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/constants.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class CircularProgressIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(kPinkColour),
                    strokeWidth: 1.0,
                  ),
                ),
                SizedBox(
                  height: 150.0,
                ),
                Container(
                  width: 370.0,
                  child: MyStyledTextWidget(
                    msg:
                        'A material design circular progress indicator, which spins to indicate that the application is busy.',
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  width: 370.0,
                  child: MyStyledTextWidget(
                    msg:
                        'Determinate progress indicators have a specific value at each point in time, and the value should increase monotonically from 0.0 to 1.0, at which time the indicator is complete. To create a determinate progress indicator, use a non-null value between 0.0 and 1.0.',
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  width: 370.0,
                  child: MyStyledTextWidget(
                    msg:
                        'Indeterminate. Indeterminate progress indicators do not have a specific value at each point in time and instead indicate that progress is being made without indicating how much progress remains. To create an indeterminate progress indicator, use a null value.',
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
