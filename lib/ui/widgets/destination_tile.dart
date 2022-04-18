import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'package:airplane/ui/pages/DetailPage.dart';

class DestinationTile extends StatelessWidget {
  final String name;
  final String city;
  final String imgUrl;
  final double rating;

  const DestinationTile(
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
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 16),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Row(
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
                    image: AssetImage('assets/images/$imgUrl'),
                  )),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style:
                        blackStyle.copyWith(fontSize: 18, fontWeight: medium),
                  ),
                  Text(
                    city,
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
                    rating.toString(),
                    style: blackStyle.copyWith(fontWeight: medium),
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
