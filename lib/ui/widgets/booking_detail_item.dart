import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BookingDetailItem extends StatelessWidget {
  final String title;
  final String valueText;
  final Color valueColor;

  const BookingDetailItem(
      {Key? key,
      required this.title,
      required this.valueText,
      required this.valueColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icons/check_circle.png'))),
          ),
          Text(
            title,
            style: blackStyle,
          ),
          Spacer(),
          Text(
            valueText,
            style: blackStyle.copyWith(fontWeight: semibold, color: valueColor),
          )
        ],
      ),
    );
  }
}
