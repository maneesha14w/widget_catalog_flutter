import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class CupertinoActionSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: ElevatedButton(
              onPressed: () {
                final action = CupertinoActionSheet(
                  actions: [
                    CupertinoActionSheetAction(
                      onPressed: () {},
                      child: MyStyledTextWidget(msg: 'Hello,'),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {},
                      child: MyStyledTextWidget(msg: 'This is a Cupertino'),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {},
                      child: MyStyledTextWidget(msg: 'Action Sheet'),
                    ),
                  ],
                );
                showCupertinoModalPopup(
                    context: context, builder: (context) => action);
              },
              child: MyStyledTextWidget(msg: 'Click Me!'),
            ),
          ),
        ),
      ),
    );
  }
}
