import 'package:black_market/Features/home/data/repo/home_repo_impl.dart';
import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFF0E0E0E),
            radius: 24,
            child: SvgPicture.asset("Assets/images/Notification.svg"),
          ),
          Spacer(flex: 1),
          FutureBuilder<String>(
            future: HomeRepoImpl().getUserData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "مرحباً",
                      style: TextStyle(fontSize: 12, color: Color(0xffB4B4B4)),
                    ),
                    Text(
                      "جاري التحميل...",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "مرحباً",
                      style: TextStyle(fontSize: 12, color: Color(0xffB4B4B4)),
                    ),
                    Text(
                      "حدث خطأ",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                );
              } else if (snapshot.hasData) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "مرحباً",
                      style: TextStyle(fontSize: 12, color: Color(0xffB4B4B4)),
                    ),
                    Text(
                      snapshot.data!,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                );
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "مرحباً",
                      style: TextStyle(fontSize: 12, color: Color(0xffB4B4B4)),
                    ),
                    Text(
                      "لا يوجد بيانات",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                );
              }
            },
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
