


import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget
{
  const CustomTextField({Key? key, required this.hint, required this.isPassword, required this.labelPass, this.iconData}) : super(key: key);
  final String hint;
  final String labelPass;
  final bool isPassword;
  final IconData? iconData;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 8.0,bottom: 24),
      child: TextField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(

            prefixIcon:Image(image: AssetImage(labelPass),),

            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.black)),
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: ColorSelect.PColor)),
            fillColor: ColorSelect.SColor,
            filled: true,
            hintStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,

            ),
            contentPadding: EdgeInsets.all(24),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        cursorColor: ColorSelect.PColor,
        obscureText: isPassword,
      ),
    );
  }
}
