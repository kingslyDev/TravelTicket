import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travelticket/ui/screens/home_page.dart';
import 'package:travelticket/widgets/customButtonNavigation.dart';
import '../../shared/themes.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  Widget buildContent() {
    return const HomePage();
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
              imageUrl: 'assets/ic_home.png',
              isSelected: true,
            ),
            CustomButtonNavigationItem(
              imageUrl: 'assets/ic_transaksi.png',
            ),
            CustomButtonNavigationItem(
              imageUrl: 'assets/ic_saldo.png',
            ),
            CustomButtonNavigationItem(
              imageUrl: 'assets/ic_settings.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customButtonNavigaton(),
        ],
      ),
    );
  }
}
