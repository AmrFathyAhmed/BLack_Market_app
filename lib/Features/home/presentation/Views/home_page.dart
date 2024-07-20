import 'package:black_market/Features/Favorite/presentation/views/favorite_page.dart';
import 'package:black_market/Features/Gold/presentation/views/gold_view_body.dart';
import 'package:black_market/Features/Profile/presentation/views/profile_page.dart';
import 'package:black_market/Features/home/presentation/Views/widgets/home_page_body.dart';
import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 2;
  List<Widget> body = const [
    ProfilePage(),
    FavoritePage(),
    GoldViewBody(),
    HomePageBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar:Container(
        decoration: BoxDecoration(
          color: ColorSelect.SColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            iconSize: 26,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            currentIndex: currentIndex,
            selectedItemColor: ColorSelect.PColor,
            unselectedItemColor: ColorSelect.SColor,
            selectedIconTheme: IconThemeData(size: 40),
            showUnselectedLabels: false,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: currentIndex == 0
                    ? SvgPicture.asset("Assets/images/profile-selected.svg")
                    : SvgPicture.asset("Assets/images/profile.svg"),
                label: 'البروفيل',
              ),
              BottomNavigationBarItem(
                icon: currentIndex == 1
                    ? SvgPicture.asset("Assets/images/hear-selectedt.svg")
                    : SvgPicture.asset("Assets/images/heart.svg"),
                label: 'المفضلة',
              ),
              BottomNavigationBarItem(
                icon: currentIndex == 2
                    ? SvgPicture.asset("Assets/images/gold-selected.svg")
                    : SvgPicture.asset("Assets/images/Vector.svg"),
                label: 'الذهب',
              ),
              BottomNavigationBarItem(
                icon: currentIndex == 3
                    ? SvgPicture.asset("Assets/images/dollar-circle-selcted.svg")
                    : SvgPicture.asset("Assets/images/dollar-circle.svg"),
                label: 'العملات',
              ),
            ],
          ),
        ),
      ),

    );
  }
}
