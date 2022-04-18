import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'package:airplane/ui/pages/DetailPage.dart';

class DestinationCard extends StatelessWidget {
  final String name;
  final String imgUrl;
  final String city;
  final double rating;

  const DestinationCard(
      {Key? key,
      required this.name,
      required this.city,
      required this.imgUrl,
      this.rating = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
        height: 323,
        width: 200,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 24),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: 180,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                      image: AssetImage('assets/images/$imgUrl'))),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 55,
                  height: 30,
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(18))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/icons/icon_star.png')))),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        rating.toString(),
                        style: greyStyle.copyWith(fontWeight: medium),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style:
                        blackStyle.copyWith(fontSize: 18, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    city,
                    style: greyStyle.copyWith(fontWeight: light),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
