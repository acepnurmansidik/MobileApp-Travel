import 'package:airplane/ui/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 211,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icons/img_success.png'))),
            ),
            Container(
              margin: EdgeInsets.only(top: 80, bottom: 50),
              child: Column(
                children: [
                  Text(
                    'Well Booked 😍',
                    style:
                        blackStyle.copyWith(fontSize: 32, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Are you ready to explore the new\nworld of experiences?',
                    style: greyStyle.copyWith(fontSize: 16, fontWeight: light),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            CustomeButton(
              title: 'My Bookings',
              width: 220,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
