import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class AlertDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: MyStyledTextWidget(msg: 'AlertDialog Title'),
                content:
                    MyStyledTextWidget(msg: 'This is the AlertDialog Content'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: MyStyledTextWidget(msg: 'Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: MyStyledTextWidget(msg: 'OK'),
                  )
                ],
              ),
            ),
            child: MyStyledTextWidget(
              msg: 'Press me for an alert!',
            ),
          ),
        ),
      ),
    );
  }
}
