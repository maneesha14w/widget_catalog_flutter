import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/constants.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 400.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Chip(
                      onDeleted: () {},
                      deleteButtonTooltipMessage: 'Delete',
                      deleteIcon: Icon(Icons.close),
                      backgroundColor: kPinkColour,
                      avatar: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        child: MyStyledTextWidget(
                          msg: 'H',
                        ),
                      ),
                      label: MyStyledTextWidget(
                        msg: 'Hello',
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Chip(
                      onDeleted: () {},
                      deleteButtonTooltipMessage: 'Delete',
                      deleteIcon: Icon(Icons.close),
                      backgroundColor: kPinkColour,
                      avatar: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        child: MyStyledTextWidget(
                          msg: 'W',
                        ),
                      ),
                      label: MyStyledTextWidget(
                        msg: 'World',
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Chip(
                      onDeleted: () {},
                      deleteButtonTooltipMessage: 'Delete',
                      deleteIcon: Icon(Icons.close),
                      backgroundColor: kPinkColour,
                      avatar: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        child: MyStyledTextWidget(
                          msg: 'C',
                        ),
                      ),
                      label: MyStyledTextWidget(
                        msg: 'Chips',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 150.0,
                ),
                Container(
                    width: 340.0,
                    child: MyStyledTextWidget(
                      msg:
                          'Chips are compact elements that represent an attribute, text, entity, or action.'
                          'Supplying a non-null onDeleted callback will cause the chip to include a button for deleting the chip.'
                          'Its ancestors must include Material, MediaQuery, Directionality, and MaterialLocalizations. Typically all of these widgets '
                          'are provided by MaterialApp and Scaffold. The label and clipBehavior arguments must not be null.',
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
