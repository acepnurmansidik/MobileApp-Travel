import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 85,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/icon_trip.png')
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semibold
                      ),
                    ),
                    Text(
                      'Tangerang',
                      style: greyStyle.copyWith(
                        fontWeight: light
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'CGK',
                      style: blackStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semibold
                      ),
                    ),
                    Text(
                      'Tangerang',
                      style: greyStyle.copyWith(
                        fontWeight: light
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin
        ),
        children: [route()],
      ),
    );
  }
}
