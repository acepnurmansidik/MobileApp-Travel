import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomeBottomNavigationItem extends StatelessWidget {
  final String imgUrl;
  final bool isSelected;

  const CustomeBottomNavigationItem(
      {Key? key, required this.imgUrl, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/icons/$imgUrl'))),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: isSelected ? kPrimaryColor : kTransparentColor, 
              borderRadius: BorderRadius.circular(18)),
        )
      ],
    );
  }
}
