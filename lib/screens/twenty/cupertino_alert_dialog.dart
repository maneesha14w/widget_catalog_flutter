import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/constants.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class CupertinoAlertDialogWidget extends StatefulWidget {
  @override
  _CupertinoAlertDialogWidgetState createState() =>
      _CupertinoAlertDialogWidgetState();
}

class _CupertinoAlertDialogWidgetState
    extends State<CupertinoAlertDialogWidget> {
  String text = 'Click me';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: ElevatedButton(
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                    content: Text(
                      'This is the content',
                      style: kTextStyle,
                    ),
                    actions: [
                      CupertinoDialogAction(
                        child: MyStyledTextWidget(
                          msg: 'No',
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          setState(() {
                            text = 'No Has been chosen';
                          });
                        },
                      ),
                      CupertinoDialogAction(
                        child: MyStyledTextWidget(
                          msg: 'Yes',
                        ),
                        isDestructiveAction: true,
                        onPressed: () {
                          Navigator.pop(context);
                          setState(() {
                            text = 'Yes Has been chosen';
                          });
                        },
                      ),
                    ],
                    insetAnimationCurve: Curves.easeIn,
                  ),
                );
              },
              child: Text(
                text,
                style: kTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
