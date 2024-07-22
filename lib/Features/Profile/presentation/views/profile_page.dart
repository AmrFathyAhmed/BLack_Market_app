import 'package:black_market/Features/Auth/Data/repo/auth_repo_impl.dart';
import 'package:black_market/Features/Auth/Presentation/views/login/Login_view.dart';
import 'package:black_market/Features/Profile/presentation/views/widgets/log_out_buttom_sheet.dart';
import 'package:black_market/Features/Profile/presentation/views/widgets/logout-bottom.dart';
import 'package:black_market/Features/Profile/presentation/views/widgets/profile-item.dart';
import 'package:black_market/Features/Profile/presentation/views/widgets/text_app_bar.dart';
import 'package:black_market/Features/home/data/repo/home_repo_impl.dart';
import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: ListView(
        children: [
          TextAppBar(title: "البروفيل"),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: CircleAvatar(
              backgroundColor: ColorSelect.PColor,
              radius: 42,
              child: CircleAvatar(
                radius: 38,
                backgroundImage: AssetImage("Assets/images/Test.png"),
              ),
            ),
          ),
          FutureBuilder<String>(
            future: HomeRepoImpl().getUserData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "مرحباً",
                        style: TextStyle(fontSize: 12, color: Color(0xffB4B4B4)),
                      ),
                      Text(
                        "جاري التحميل...",
                        style: TextStyle(fontSize: 16, color: ColorSelect.PColor),
                      ),
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "مرحباً",
                        style: TextStyle(fontSize: 12, color: Color(0xffB4B4B4)),
                      ),
                      Text(
                        "حدث خطأ",
                        style: TextStyle(fontSize: 16, color: ColorSelect.PColor),
                      ),
                    ],
                  ),
                );
              } else if (snapshot.hasData) {
                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "مرحباً",
                        style: TextStyle(fontSize: 12, color: Color(0xffB4B4B4)),
                      ),
                      Text(
                        snapshot.data!,
                        style: TextStyle(fontSize: 16, color: ColorSelect.PColor),
                      ),
                    ],
                  ),
                );
              } else {
                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "مرحباً",
                        style: TextStyle(fontSize: 12, color: Color(0xffB4B4B4)),
                      ),
                      Text(
                        "لا يوجد بيانات",
                        style: TextStyle(fontSize: 16, color: ColorSelect.PColor),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
          const SizedBox(height: 22),
          ProfileItem(
            title: "تعديل الملف الشخصي",
            iconPass: "Assets/images/profile-bold.svg",
            onPressed: () {},
          ),
          ProfileItem(
            title: "مدخراتي",
            iconPass: "Assets/images/wallet.svg",
            onPressed: () {},
          ),
          ProfileItem(
            title: "مشاركة التطبيق",
            iconPass: "Assets/images/share.svg",
            onPressed: () {},
          ),
          ProfileItem(
            title: "عن التطبيق",
            iconPass: "Assets/images/info-circle.svg",
            onPressed: () {},
          ),
          ProfileItem(
            title: "العملة الاساسية",
            iconPass: "Assets/images/dollar-circle-bold.svg",
            onPressed: () {},
          ),
          ProfileItem(
            title: "الاعدادات",
            iconPass: "Assets/images/setting-2.svg",
            onPressed: () {},
          ),
          LogoutBottom(
            onTap: () {
              _showBottomSheet(context);
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return CustomBottomSheet(
          title: "هل انت متأكد من تسجيل الخروج",
          message: "تسجيل الخروج",
          buttonText: "تسجيل الخروج",
          onConfirm: () async {
            try {
              await AuthRepoImpl().signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            } on Exception catch (e) {
              print(e.toString());
            }
          },
        );
      },
    );
  }
}
