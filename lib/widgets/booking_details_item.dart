import 'package:flutter/material.dart';
import 'package:travelticket/shared/themes.dart';

class BookingDetailsItem extends StatelessWidget {
  final String fitur;
  final String ket;
  final Color valueColor;

  const BookingDetailsItem({
    Key? key,
    required this.fitur,
    required this.ket,
    required this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(
              right: 6,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ic_check.png'),
              ),
            ),
          ),
          Text(
            fitur,
            style: blackTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
          Spacer(),
          Text(
            ket,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
