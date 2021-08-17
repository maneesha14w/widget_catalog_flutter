import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 350.0,
      child: Image(
        image: AssetImage('assets/mountains.jpg'),
      ),
    );
  }
}
