
import 'package:black_market/Features/home/presentation/Views/home/widgets/home_app_bar.dart';
import 'package:black_market/Features/home/presentation/Views/home/widgets/home_main_widget_card.dart';
import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';

class HomeMainWidget extends StatelessWidget {
  const HomeMainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

          color: ColorSelect.SColor,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80),bottomRight: Radius.circular(80))
      ),
      child: Column(children: [
        HomeAppBar(),
        SizedBox(height: 14,),
        Text("Black Market",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w800,color: ColorSelect.PColor),),
        SizedBox(height: 14,),
        Text("بكام في السوق السوداء؟",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xFFFFF4B0)),),
        SizedBox(height: 30,),
        HomeMainWidgetCard()

      ],),

    );
  }
}