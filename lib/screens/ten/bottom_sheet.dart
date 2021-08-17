import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/constants.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: MyElevatedButton(),
          ),
        ),
      ),
    );
  }
}

class MyElevatedButton extends StatefulWidget {
  @override
  _MyElevatedButtonState createState() => _MyElevatedButtonState();
}

class _MyElevatedButtonState extends State<MyElevatedButton> {
  bool _show = true;
  @override
  Widget build(BuildContext context) {
    return _show
        ? ElevatedButton(
            onPressed: () {
              var sheetController = showBottomSheet(
                  context: context,
                  builder: (context) => Container(
                        height: 250.0,
                        color: kLighterColour,
                      ));
              _showBtn(false);
              sheetController.closed.then((value) => _showBtn(true));
            },
            child: MyStyledTextWidget(
              msg: 'Show modal BottomSheet',
            ),
          )
        : Container(
            width: 320.0,
            child: MyStyledTextWidget(
              msg:
                  'A modal bottom sheet is an alternative to a menu or a dialog and prevents the user from interacting with the rest of the app. Modal bottom sheets can be created and displayed with the showModalBottomSheet function.',
            ),
          );
  }

  void _showBtn(bool value) {
    setState(() {
      _show = value;
    });
  }
}
