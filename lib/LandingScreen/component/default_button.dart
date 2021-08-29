import 'package:flutter/material.dart';

import '../../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    @required this.size,
    this.title,
    this.press,
  }) : super(key: key);

  final Size size;
  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: size.height * 0.07,
        width: double.infinity,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 15,
              offset: Offset(0, 12),
              color: kOrangeColor.withOpacity(0.5)),
          BoxShadow(
              blurRadius: 40,
              color: kOrangeColor.withOpacity(0.5),
              offset: Offset(-3, -3))
        ], borderRadius: BorderRadius.circular(10), color: kOrangeColor),
        child: Center(
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
      ),
    );
  }
}