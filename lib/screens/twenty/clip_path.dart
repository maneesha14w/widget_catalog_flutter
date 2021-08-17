import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/customs/image_container.dart';
import 'package:widget_catalog_flutter/customs/my_styled_text.dart';

class ClipPathWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipPath(
                child: ImageContainer(),
                clipper: ClipPathClass(),
              ),
              SizedBox(
                height: 100.0,
              ),
              Container(
                width: 320.0,
                child: MyStyledTextWidget(
                    msg:
                        'A widget that clips its child using a path. \n\n Calls a callback on a delegate whenever the widget is to be painted. '
                        'The callback returns a path and the widget prevents the child from painting outside the path.'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
