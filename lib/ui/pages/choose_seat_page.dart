import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackStyle.copyWith(fontSize: 24, fontWeight: semibold),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Row(
          children: [
            Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/icons/icon_available.png'))),
                ),
                Text(
                  'Available',
                  style: blackStyle,
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/icon_selected.png'))),
                ),
                Text(
                  'Selected',
                  style: blackStyle,
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/icons/icon_unavailable.png'))),
                ),
                Text(
                  'Unavailable',
                  style: blackStyle,
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget seatIndicator() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18)
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'A', 
                      style: greyStyle.copyWith(fontSize: 16),
                    )
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'B', 
                      style: greyStyle.copyWith(fontSize: 16),
                    )
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '', 
                      style: greyStyle.copyWith(fontSize: 16),
                    )
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'C', 
                      style: greyStyle.copyWith(fontSize: 16),
                    )
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'D', 
                      style: greyStyle.copyWith(fontSize: 16),
                    )
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [title(), seatStatus(), seatIndicator()],
      ),
    );
  }
}
