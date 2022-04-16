import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';
import '../widgets/custome_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customeButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 60,
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: kWhiteColor
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomeBottomNavigationItem(isSelected: true, imgUrl: 'icon_home_active.png',),
              CustomeBottomNavigationItem(isSelected: false, imgUrl: 'icon_book.png',),
              CustomeBottomNavigationItem(isSelected: false, imgUrl: 'icon_credit.png',),
              CustomeBottomNavigationItem(isSelected: false, imgUrl: 'icon_setting.png',)
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [Text('MAIN'),customeButtonNavigation()],
      ),
    );
  }
}
