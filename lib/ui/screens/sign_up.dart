import 'package:flutter/material.dart';
import 'package:travelticket/widgets/custom_button.dart';
import 'package:travelticket/widgets/custom_input.dart';
import '../../shared/themes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget InputSection() {
      Widget nameInput() {
        return CustomInput(
          judul: 'Fullname',
          hint: 'Your Fullname',
        );
      }

      Widget emailInput() {
        return CustomInput(
          judul: 'Email',
          hint: 'Your Email',
        );
      }

      Widget passInput() {
        return CustomInput(
          judul: 'Password',
          hint: 'Your Password',
        );
      }

      Widget hobbyInput() {
        return CustomInput(
          judul: 'Hobbies',
          hint: 'Your Hobby',
        );
      }

      Widget sumbitButton() {
        return CustomButton(
            kata: 'Submit',
            onPressed: () {
              Navigator.pushNamed(context, '/bonus-page');
            });
      }

      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passInput(),
            hobbyInput(),
            sumbitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
          bottom: 73,
        ),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
              fontSize: 15,
              fontWeight: light,
              decoration: TextDecoration.underline),
          textAlign: TextAlign.center,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            InputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
