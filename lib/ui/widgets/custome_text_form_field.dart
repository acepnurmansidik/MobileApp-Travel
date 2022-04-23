import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomeTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const CustomeTextFormField(
      {Key? key,
      required this.title,
      required this.hintText,
      required this.controller,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackStyle.copyWith(fontSize: 14, fontWeight: regular),
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: obscureText,
            controller: controller,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: kPrimaryColor))),
          )
        ],
      ),
    );
  }
}
