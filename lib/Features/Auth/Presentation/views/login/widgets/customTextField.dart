import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key,
      required this.hint,
      required this.isPassword,
      required this.labelPass,
      this.iconData,
      this.validator,
      this.onTap,
      this.onChanged,
      this.controller})
      : super(key: key);
  final String hint;
  final String labelPass;
  final bool isPassword;
  final IconData? iconData;
  final Function()? onTap;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 24),
      child: TextFormField(
        controller: widget.controller,
        onTap: widget.onTap,
        validator: widget.validator,
        onChanged: widget.onChanged,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
            prefixIcon: Image(
              image: AssetImage(widget.labelPass),
            ),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),

                borderSide: BorderSide(color: Colors.red)) ,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.black)),
            hintText: widget.hint,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: ColorSelect.PColor)),
            fillColor: ColorSelect.SColor,
            filled: true,
            errorStyle: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            hintStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            contentPadding: EdgeInsets.all(24),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        cursorColor: ColorSelect.PColor,
        obscureText: widget.isPassword,



      ),
    );
  }
}
