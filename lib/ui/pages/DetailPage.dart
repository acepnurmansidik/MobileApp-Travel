import 'package:airplane/ui/pages/choose_seat_page.dart';
import 'package:airplane/ui/widgets/custome_button.dart';
import 'package:airplane/ui/widgets/interest_item.dart';
import 'package:airplane/ui/widgets/photo_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/dest_1.png'))),
      );
    }

    Widget customeShadow() {
      return Container(
        height: 214,
        width: double.infinity,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ])),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            // NOTED: EMBLEM
            Container(
              height: 24,
              width: 108,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icons/emblem.png'))),
            ),
            // NOTED: TITLE
            Container(
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteStyle.copyWith(
                              fontSize: 24, fontWeight: semibold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Tangerang',
                          style: whiteStyle.copyWith(
                              fontSize: 16, fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        margin: EdgeInsets.only(right: 2),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/icons/icon_star.png'))),
                      ),
                      Text(
                        '4.5',
                        style: whiteStyle.copyWith(fontWeight: medium),
                      )
                    ],
                  )
                ],
              ),
            ),
            // NOTED: DESCRIPTION
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                  color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOTED: ABOUT
                  Text(
                    'About',
                    style:
                        blackStyle.copyWith(fontSize: 16, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                    style: blackStyle.copyWith(height: 2),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Photos',
                    style:
                        blackStyle.copyWith(fontSize: 16, fontWeight: semibold),
                  ),
                  // NOTED: PHOTOS
                  SizedBox(
                    height: 6,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PhotoItem(imgUrl: 'image_photo1.png'),
                        PhotoItem(imgUrl: 'image_photo2.png'),
                        PhotoItem(imgUrl: 'image_photo3.png'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // NOTED: INTERESTS
                  Text(
                    'Interests',
                    style:
                        blackStyle.copyWith(fontSize: 16, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      InterestItem(text: 'Kids Park'),
                      InterestItem(text: 'Honor Bridges'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InterestItem(text: 'City Museum'),
                      InterestItem(text: 'Central Mall'),
                    ],
                  ),
                ],
              ),
            ),
            // NOTED: PRICE & BOOK BUTTON
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  // NOTED: PRICE
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 2.500.000',
                          style: blackStyle.copyWith(
                              fontSize: 18, fontWeight: medium),
                        ),
                        Text(
                          'per orang',
                          style: greyStyle.copyWith(fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  // NOTED: BUTTON BOOK NOW
                  CustomeButton(
                    title: 'Book Now',
                    width: 170,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseSeatPage()));
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [backgroundImage(), customeShadow(), content()],
        ),
      ),
    );
  }
}
