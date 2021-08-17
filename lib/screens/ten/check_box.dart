import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class CheckboxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCheckBox(),
                SizedBox(
                  height: 200.0,
                ),
                Container(
                  width: 350.0,
                  child: MyStyledTextWidget(
                    msg:
                        'The checkbox itself does not maintain any state. Instead, when the state of the checkbox changes,'
                        ' the widget calls the onChanged callback. Most widgets that use a checkbox will listen for the onChanged callback '
                        'and rebuild the checkbox with a new value to update the visual appearance of the checkbox.',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCheckBox extends StatefulWidget {
  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: _isChecked,
      onChanged: (bool? value) {
        setState(() {
          _isChecked = value!;
        });
      },
    );
  }
}
