import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
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
                      style: blackStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semibold
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 6,),
                    Text(
                      'Where to fly today?',
                      style: greyStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light
                      ),
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
                    image: AssetImage('assets/images/img_profile.png')
                  )
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}