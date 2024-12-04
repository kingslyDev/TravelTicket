import 'package:flutter/material.dart';
import '../shared/themes.dart';

class CustomInput extends StatelessWidget {
  final String judul;
  final String hint;
  final bool obscureText;
  final TextEditingController controller;

  const CustomInput({
    Key? key,
    required this.judul,
    required this.hint,
    this.obscureText = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            judul,
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
