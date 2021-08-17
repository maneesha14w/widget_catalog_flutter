import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/customs/image_container.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class ClipRectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: ClipRect(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: ImageContainer(),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Container(
                width: 350.0,
                child: MyStyledTextWidget(
                  msg: 'A widget that clips its child using a rectangle. \n\n '
                      'By default, ClipRect prevents its child from painting outside its bounds,'
                      ' but the size and location of the clip rect can be customized using a custom clipper.',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
