import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AverageWidget extends StatelessWidget {
  const AverageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorSelect.PColor
        ),
        child: Padding(
            padding: const EdgeInsets.only(left: 19,right: 19,top: 14,bottom: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("Assets/images/CalculatorBlue.svg"),

                Column(
                  children: [
                    Text("بيع",style: TextStyle(color: Color(0xFF362727),fontSize: 10 ,fontWeight: FontWeight.bold),)
                    ,SizedBox(
                      height: 12,
                    ),
                    Text("31.25 ج.م",style: TextStyle(color: Color(0xFF0E0E0E),fontWeight: FontWeight.bold,fontSize: 10),)],
                ),

                Container(
                  height: 25,
                  width: 1,
                  color: Colors.grey.withOpacity(.7),
                ),
                Column(
                  children: [
                    Text("شراء",style: TextStyle(color: Color(0xFF362727),fontSize: 10 ,fontWeight: FontWeight.bold),)
                    ,SizedBox(
                      height: 12,
                    ),
                    Text("30.24 ج.م",style: TextStyle(color: Color(0xFF0E0E0E),fontSize: 10,fontWeight: FontWeight.bold),)],
                ),
                Container(
                  height: 25,
                  width: 1,
                  color: Colors.grey.withOpacity(.7),
                ),
                Text("متوسط السعر",style: TextStyle(color: Color(0xFF333333),fontSize: 10 ,fontWeight: FontWeight.bold),)



              ],
            )


        ),
      ),
    );
  }
}