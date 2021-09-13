import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/constants.dart';

class CupertinoContextMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: SizedBox(
              width: 100.0,
              height: 100.0,
              child: CupertinoContextMenu(
                actions: [
                  CupertinoContextMenuAction(
                    child: const Text('Action one'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoContextMenuAction(
                    child: const Text('Action two'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
                child: Container(
                  color: kPinkColour,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
