import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 30,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy,\nKezia Anne',
                  style:
                      blackStyle.copyWith(fontSize: 24, fontWeight: semibold),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Where to fly today?',
                  style: greyStyle.copyWith(fontSize: 16, fontWeight: light),
                )
              ],
            ),
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/img_profile.png'))),
          )
        ],
      ),
    );
  }

  Widget popularDestination() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DestinationCard(
              name: 'Lake Ciliwung',
              city: 'Tangerang',
              imgUrl: 'dest_1.png',
              rating: 4.8,
            ),
            DestinationCard(
              name: 'White House',
              city: 'Spain',
              imgUrl: 'dest_2.png',
              rating: 4.7,
            ),
            DestinationCard(
              name: 'Hill Heyo',
              city: 'Monaco',
              imgUrl: 'dest_3.png',
              rating: 4.9,
            ),
            DestinationCard(
              name: 'Menara',
              city: 'Japan',
              imgUrl: 'dest_4.png',
              rating: 4.5,
            ),
            DestinationCard(
              name: 'Payung Teduh',
              city: 'Singapore',
              imgUrl: 'dest_5.png',
              rating: 4.5,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [header(), popularDestination()],
    );
  }
}
