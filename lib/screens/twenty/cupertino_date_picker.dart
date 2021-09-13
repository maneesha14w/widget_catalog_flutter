import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/constants.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class CupertinoDatePickerWidget extends StatefulWidget {
  @override
  _CupertinoDatePickerWidgetState createState() =>
      _CupertinoDatePickerWidgetState();
}

class _CupertinoDatePickerWidgetState extends State<CupertinoDatePickerWidget> {
  String myDate = 'My Date!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyStyledTextWidget(msg: myDate),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  width: 350.0,
                  height: 350.0,
                  child: CupertinoDatePicker(
                      backgroundColor: kPinkColour,
                      mode: CupertinoDatePickerMode.dateAndTime,
                      onDateTimeChanged: (DateTime dateTime) {
                        setState(() {
                          myDate = dateTime.toString();
                        });
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
