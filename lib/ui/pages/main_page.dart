import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/ui/pages/setting_page.dart';
import 'package:airplane/ui/pages/transaction_page.dart';
import 'package:airplane/ui/pages/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/custome_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
    }

    Widget customeButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 60,
          width: double.infinity,
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18), color: kWhiteColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomeBottomNavigationItem(
                index: 0,
                imgUrl: 'icon_home_active.png',
              ),
              CustomeBottomNavigationItem(
                index: 1,
                imgUrl: 'icon_book.png',
              ),
              CustomeBottomNavigationItem(
                index: 2,
                imgUrl: 'icon_credit.png',
              ),
              CustomeBottomNavigationItem(
                index: 3,
                imgUrl: 'icon_setting.png',
              )
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [buildContent(currentIndex), customeButtonNavigation()],
          ),
        );
      },
    );
  }
}
