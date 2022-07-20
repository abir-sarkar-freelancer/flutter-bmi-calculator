import 'constants.dart';
import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final IconData iconVal;
  final String textVal;
  const IconCard({
    Key? key,
    required this.iconVal,
    required this.textVal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconVal,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          textVal,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
