import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomeButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;

  const CustomeButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.margin = EdgeInsets.zero,
      this.width = double.infinity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius))),
        child: Text(
          title,
          style: whiteStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
      ),
    );
  }
}
