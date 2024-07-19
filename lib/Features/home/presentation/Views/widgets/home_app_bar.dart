
import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:18,vertical: 12),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFF0E0E0E),
            radius: 24,
            child: SvgPicture.asset("Assets/images/Notification.svg"),

          ),
          Spacer(flex: 1,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("مرحباً",style: TextStyle(fontSize: 12,color: Color(0xffB4B4B4)),),
              Text("عمرو فتحي",style: TextStyle(fontSize: 14,color: Colors.white),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: CircleAvatar(
              backgroundColor: ColorSelect.PColor,
              radius: 24,
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage("Assets/images/Test.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}