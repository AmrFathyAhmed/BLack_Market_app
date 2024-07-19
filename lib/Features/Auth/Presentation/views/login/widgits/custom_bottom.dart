
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget
{
  const CustomBottom({Key? key, required this.bottomName, required this.color, this.onPressed,this.textColor= Colors.black}) : super(key: key);
final String bottomName;
final Color color;
final Color? textColor;
final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Center(
            child: Text(
              bottomName,
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18, color: textColor),
            )),
      ),
    );
  }
}
class CustomBottomWithIcon extends StatelessWidget
{
  const CustomBottomWithIcon({Key? key, required this.bottomName, required this.color, this.onPressed,this.textColor= Colors.black}) : super(key: key);
  final String bottomName;
  final Color color;
  final Color? textColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            bottomName,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: textColor),
          ),
        SizedBox(width: 16,),
        Image(image: AssetImage("Assets/images/search.png"),width: 24,)],
      ),
    );
  }
}