import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:widget_catalog_flutter/constants.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class CupertinoButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: CupertinoButton(
              color: kPinkColour,
              borderRadius: BorderRadius.circular(20.0),
              pressedOpacity: 0.8,
              onPressed: () {
                Alert(context: context, title: "Hey you did it!", desc: "Nice.")
                    .show();
              },
              child: MyStyledTextWidget(
                msg: 'Click Me',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
