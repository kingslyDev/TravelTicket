import 'package:flutter/material.dart';
import 'package:travelticket/shared/themes.dart';

class InterestItem extends StatelessWidget {
  final String desc;

  const InterestItem({
    Key? key,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                fit: BoxFit.cover,
                image: AssetImage('assets/ic_check.png'),
              ),
            ),
          ),
          Text(
            desc,
            style: blackTextStyle,
          )
        ],
      ),
    );
    ;
  }
}
