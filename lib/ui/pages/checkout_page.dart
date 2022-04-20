import 'package:airplane/ui/widgets/booking_detail_item.dart';
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
                      image: AssetImage('assets/images/icon_trip.png'))),
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
                          fontSize: 24, fontWeight: semibold),
                    ),
                    Text(
                      'Tangerang',
                      style: greyStyle.copyWith(fontWeight: light),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'CGK',
                      style: blackStyle.copyWith(
                          fontSize: 24, fontWeight: semibold),
                    ),
                    Text(
                      'Tangerang',
                      style: greyStyle.copyWith(fontWeight: light),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    Widget bokingDetail() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20
        ),
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTED: DESTINATION TILE
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        // boxfit agar gambarnya menyesuaikan dengan container
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/dest_1.png'),
                      )),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style:
                            blackStyle.copyWith(fontSize: 18, fontWeight: medium),
                      ),
                      Text(
                        'Tangerang',
                        style: greyStyle.copyWith(fontWeight: light),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icons/icon_star.png'))),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        '4.8',
                        style: blackStyle.copyWith(fontWeight: medium),
                      )
                    ],
                  ),
                )
          ],
            ),
            // NOTED: BOOKING DETAIL ITEMS
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Booking Details',
                style: blackStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold
                ),
              ),
            ),
            BookingDetailItem(title: 'Traveler', valueText: '2 Person', valueColor: kBlackColor,),
            BookingDetailItem(title: 'Seat', valueText: 'A3, B3', valueColor: kBackgroundColor,),
            BookingDetailItem(title: 'Insurance', valueText: 'YES', valueColor: kGreenColor,),
            BookingDetailItem(title: 'Refundable', valueText: 'NO', valueColor: kRedColor,),
            BookingDetailItem(title: 'VAT', valueText: '45%', valueColor: kBlackColor,),
            BookingDetailItem(title: 'Price', valueText: 'IDR 8.500.690', valueColor: kBlackColor,),
            BookingDetailItem(title: 'Grand Total', valueText: 'IDR 12.000.000', valueColor: kPrimaryColor,),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [route(), bokingDetail()],
      ),
    );
  }
}
