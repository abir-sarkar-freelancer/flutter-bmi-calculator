import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String btnTitle;
  final VoidCallback onTap;
  const BottomButton({
    Key? key,
    required this.btnTitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: bottomBarColour,
          width: double.infinity,
          height: bottomBarHeight,
          child: Center(
            child: Text(
              btnTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }
}
