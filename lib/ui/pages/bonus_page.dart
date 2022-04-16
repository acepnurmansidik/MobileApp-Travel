import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/img_bonus.png')),
            boxShadow: [
              BoxShadow(
                  color: kPrimaryColor.withOpacity(0.5),
                  blurRadius: 50,
                  offset: Offset(0, 10))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // expanded spt space-between juga untuk megisi ruang yang kosong
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        'Kezia Anne',
                        style: whiteStyle.copyWith(
                            fontSize: 20, fontWeight: medium),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/plane_icon.png'))),
                ),
                Text(
                  'Pay',
                  style: whiteStyle.copyWith(fontSize: 16, fontWeight: medium),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 41),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Balance',
                    style: whiteStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'IDR 280.000.000',
                    style: whiteStyle.copyWith(fontSize: 26, fontWeight: medium),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          'Big Bonus 🎉',
          style: blackStyle.copyWith(fontSize: 32, fontWeight: semibold),
        ),
      );
    }

    Widget subTitle() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          'We give you early credit so that\nyou can buy a flight ticket',
          style: greyStyle.copyWith(fontSize: 16, fontWeight: light),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton() {
      return Container(
        width: 220,
        height: 55,
        margin: EdgeInsets.only(top: 50),
        child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius)
            )
          ),
          child: Text(
            'Start Fly Now',
            style: whiteStyle.copyWith(
              fontSize: 18,
              fontWeight: light
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [bonusCard(), title(), subTitle(),startButton()],
        ),
      ),
    );
  }
}
