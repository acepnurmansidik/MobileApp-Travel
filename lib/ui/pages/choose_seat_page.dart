import 'package:airplane/ui/widgets/custome_button.dart';
import 'package:airplane/ui/widgets/seat_item.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            // NOTED: SEAT INDICATORS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                      child: Text(
                    'A',
                    style: greyStyle.copyWith(fontSize: 16),
                  )),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                      child: Text(
                    'B',
                    style: greyStyle.copyWith(fontSize: 16),
                  )),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                      child: Text(
                    '',
                    style: greyStyle.copyWith(fontSize: 16),
                  )),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                      child: Text(
                    'C',
                    style: greyStyle.copyWith(fontSize: 16),
                  )),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                      child: Text(
                    'D',
                    style: greyStyle.copyWith(fontSize: 16),
                  )),
                ),
              ],
            ),
            // NOTED: SEAT 1
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    child: Center(
                        child: Text(
                      '1',
                      style: greyStyle.copyWith(fontSize: 16),
                    )),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
            // NOTED: SEAT 2
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    child: Center(
                        child: Text(
                      '2',
                      style: greyStyle.copyWith(fontSize: 16),
                    )),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
            // NOTED: SEAT 3
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 1,
                  ),
                  SeatItem(
                    status: 1,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    child: Center(
                        child: Text(
                      '3',
                      style: greyStyle.copyWith(fontSize: 16),
                    )),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),
            // NOTED: SEAT 4
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    child: Center(
                        child: Text(
                      '4',
                      style: greyStyle.copyWith(fontSize: 16),
                    )),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
            // NOTED: SEAT 5
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    child: Center(
                        child: Text(
                      '5',
                      style: greyStyle.copyWith(fontSize: 16),
                    )),
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),

            // NOTED: YOUR SEAT
            Container(
              margin: EdgeInsets.only(
                  top: 30, left: defaultMargin, right: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your seat',
                    style: greyStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'A3, B3',
                    style:
                        blackStyle.copyWith(fontSize: 16, fontWeight: medium),
                  )
                ],
              ),
            ),
            // NOTED: Total
            Container(
              margin: EdgeInsets.only(
                  top: 16, left: defaultMargin, right: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: greyStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'IDR 540.000.000',
                    style: purpleStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return CustomeButton(
        title: 'Continue & Checkout', 
        onPressed: () {}, 
        margin: EdgeInsets.only(
          top: 30
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [title(), seatStatus(), seatIndicator(), checkoutButton()],
      ),
    );
  }
}
