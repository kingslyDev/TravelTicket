import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelticket/cubit/page_cubit.dart';
import 'package:travelticket/ui/screens/home_page.dart';
import 'package:travelticket/ui/screens/setting_page.dart';
import 'package:travelticket/ui/screens/transaction_page.dart';
import 'package:travelticket/ui/screens/wallet_page.dart';
import 'package:travelticket/widgets/customButtonNavigation.dart';
import '../../shared/themes.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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

  @override
  Widget customButtonNavigaton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.only(
          bottom: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomButtonNavigationItem(
              index: 0,
              imageUrl: 'assets/ic_home.png',
            ),
            CustomButtonNavigationItem(
              index: 1,
              imageUrl: 'assets/ic_transaksi.png',
            ),
            CustomButtonNavigationItem(
              index: 2,
              imageUrl: 'assets/ic_saldo.png',
            ),
            CustomButtonNavigationItem(
              index: 3,
              imageUrl: 'assets/ic_settings.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customButtonNavigaton(),
            ],
          ),
        );
      },
    );
  }
}
