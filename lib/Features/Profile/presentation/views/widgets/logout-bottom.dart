import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoutBottom extends StatelessWidget
{
  const LogoutBottom({Key? key, required this.onTap}) : super(key: key);
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "تسجيل الخروج",
                style: TextStyle(color: Color(0xFFFF2A2A)),
              ),
              const SizedBox(
                width: 10,
              ),
              SvgPicture.asset("Assets/images/logout.svg")
            ],
          ),
        ),
      ),
    );
  }
}
