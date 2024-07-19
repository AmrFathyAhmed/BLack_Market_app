
import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({Key? key, required this.title, required this.iconPass, required this.onPressed}) : super(key: key);
  final String title;
  final String iconPass;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          color: ColorSelect.SColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("Assets/images/Arrow - Right 2.svg") ,
              Spacer(flex: 1,),
              Text("$title",style: TextStyle(color:Color(0xFFFAFAFA)),)
              ,SizedBox(width: 5,)
              ,SvgPicture.asset("$iconPass",width: 22,)
            ],),
        ),
      ),
    ) ;
  }
}

