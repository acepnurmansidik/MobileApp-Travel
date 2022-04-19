import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  final int status;
  const SeatItem({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Container(
            height: 48,
            width: 48,
            child: Center(
                child: Text(
              'YOU',
              style: whiteStyle.copyWith(fontSize: 16),
            )),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: borderColor())),
      child: child(),
    );
  }
}
