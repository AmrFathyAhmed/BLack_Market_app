import 'package:black_market/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoldAppBar extends StatelessWidget

{
  const GoldAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          SvgPicture.asset(Assets.imagesMaterialSymbolsCalculate,height: 24,)
          ,Spacer(flex: 8,)
          ,Center(child: Text("الذهب",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))
          ,Spacer(flex: 9,)
        ],
      ),
    );
  }
}