import 'package:flutter/material.dart';
import 'package:travelticket/shared/themes.dart';
import 'package:travelticket/ui/screens/main_page.dart';
import 'package:travelticket/widgets/custom_button.dart';

class SuccessCheckout extends StatelessWidget {
  const SuccessCheckout({Key? key}) : super(key: key);

  Widget banner() {
    return Container(
      margin: EdgeInsets.only(
        top: 212,
        bottom: 80,
      ),
      width: 300,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img_schedul.png'),
        ),
      ),
    );
  }

  Widget succesfull() {
    return Container(
      width: 261,
      height: 114,
      child: Column(
        children: [
          Text(
            'Well Booked 😍',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Are you ready to explore the new\nworld of experiences?',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget bookingButton(BuildContext context) {
    return CustomButton(
      kata: 'My Bookings',
      ukuran: 220,
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(
            context, '/Main-page', (route) => false);
      },
      margin: EdgeInsets.only(
        top: 50,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: ListView(
        children: [
          banner(),
          succesfull(),
          bookingButton(context),
        ],
      ),
    );
  }
}
