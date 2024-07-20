import 'package:black_market/Features/Auth/Presentation/views/login/widgits/customTextField.dart';
import 'package:black_market/Features/Auth/Presentation/views/login/widgits/custom_appbar.dart';
import 'package:black_market/Features/Auth/Presentation/views/login/widgits/custom_bottom.dart';
import 'package:black_market/Features/Auth/Presentation/views/login/widgits/lable_for_text_field.dart';
import 'package:black_market/Features/home/data/repo/home_repo_impl.dart';
import 'package:black_market/core/color.dart';
import 'package:flutter/cupertino.dart';

class SignUPBody extends StatelessWidget {
  const SignUPBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: ListView(
        children:  [
          AppBarWithArrow(
            title: "إنشاء حساب جديد",
          ),
          SizedBox(
            height: 26,
          ),
          LabelForTextField(name: "الاسم بالكامل"),
          CustomTextField(
              hint: "أدخل الاسم بالكامل",
              isPassword: false,
              labelPass: "Assets/images/Profile.png"),
          LabelForTextField(name: "البريد الإلكتروني"),
          CustomTextField(
              hint: "أدخل البريد الإلكتروني",
              isPassword: false,
              labelPass: "Assets/images/Message.png"),
          LabelForTextField(name: "كلمة المرور"),
          CustomTextField(hint: "أدخل  كود المرور", isPassword: true, labelPass: "Assets/images/Lock.png"),
          LabelForTextField(name: "تأكيد كلمة المرور"),
          CustomTextField(hint: "أدخل  كود المرور", isPassword: true, labelPass: "Assets/images/Lock.png"),
          SizedBox(
            height: 36,
          ),
          CustomBottom(bottomName: "  إنشاء حساب", color: ColorSelect.PColor,onPressed: (){
            HomeRepoImpl().fetchAllCurrency();
          },),
          SizedBox(
            height: 36,
          ),

        ],
      ),
    );
  }
}
