import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Container(
          child: CupertinoActivityIndicator(
            radius: 25.0,
            animating: true,
          ),
        )),
      ),
    );
  }
}
