import 'package:black_market/Features/Profile/presentation/views/widgets/logout-bottom.dart';
import 'package:black_market/Features/Profile/presentation/views/widgets/profile-item.dart';
import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          const Center(
              child: Text(
            "عمرو فتحي",
            style: TextStyle(fontSize: 16, color: ColorSelect.PColor),
          )),
          const SizedBox(
            height: 22,
          ),
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
           LogoutBottom(onTap: (){
             _showBottomSheet(context);


             },)
           ,
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class TextAppBar extends StatelessWidget {
  const TextAppBar({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Text(
            "$title",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}


void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(color: ColorSelect.SColor
            ,
            borderRadius: BorderRadius.vertical(top: Radius.circular(75) )),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 50,),
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          color: Color(0xFFFF2A2A),
                          borderRadius: BorderRadius.all(Radius.circular(12))

                      ),
                      child: SvgPicture.asset("Assets/images/Close Square.svg",),
                    ),Spacer(flex: 1,)
                  ],
                ),
                SizedBox(height: 24,),
                Text("هل انت متأكد من تسجيل الخروج",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFFFFFFFF)),)
                ,SizedBox(height: 31,),
                CircleAvatar(
                  radius: 48,
                  backgroundColor: Color(0xFFFF2A2A),
                  child: SvgPicture.asset("Assets/images/Error-mark.svg"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 31),
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.white.withOpacity(.3),
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:50.0),
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xFFFF2A2A),
                      borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 37.5,vertical: 12.5),
                            child: Text("تسجيل الخروج",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
                          ),
                        ],
                      ),


                    ),
                  ),
                SizedBox(height: 37.5,)

          ],
            ),
          ),
        ),
      );
    },
  );
}