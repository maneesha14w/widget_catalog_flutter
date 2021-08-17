import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class ClipOvalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                child: ClipOval(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image(
                    width: 290.0,
                    image: AssetImage('assets/mountains.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 90.0,
              ),
              MyStyledTextWidget(
                msg: 'A widget that clips its child using an oval.',
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: 350.0,
                child: MyStyledTextWidget(
                  msg:
                      'By default, inscribes an axis-aligned oval into its layout dimensions and prevents its child from painting outside that oval, but the size and location of the clip oval can be customized using a custom clipper.',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
