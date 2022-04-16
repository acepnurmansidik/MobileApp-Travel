import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custome_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/img_plane.png'))),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly like a bird',
                  style:
                      whiteStyle.copyWith(fontSize: 32, fontWeight: semibold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore new world with us and let\nyourself get an amazing experiences',
                  style: whiteStyle.copyWith(fontSize: 16, fontWeight: light),
                  textAlign: TextAlign.center,
                ),
                CustomeButton(
                  width: 220,
                  title: 'Get Started', 
                  margin: EdgeInsets.only(top: 50, bottom: 80), 
                  onPressed: ()=> Navigator.pushNamed(context, '/sign-up'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
