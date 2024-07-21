import 'package:black_market/core/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemInfoRow extends StatelessWidget {
  const ItemInfoRow({Key? key, required this.title, required this.price,  this.isPrime=false}) : super(key: key);
  final String title;
  final double price;
  final bool? isPrime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${price.toStringAsFixed(1)}ج.م",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: isPrime==true?ColorSelect.PColor:Colors.white70),textDirection: TextDirection.rtl,),
          Text(title,style: TextStyle(
              fontSize:14,fontWeight: FontWeight.w400, color: isPrime==true?ColorSelect.PColor:Colors.white70)
          ),
        ],
      ),
    ) ;
  }
}
