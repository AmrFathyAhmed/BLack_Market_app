import 'package:black_market/Features/Auth/Presentation/views/login/widgits/customTextField.dart';
import 'package:black_market/Features/Auth/Presentation/views/login/widgits/custom_appbar.dart';
import 'package:black_market/Features/Auth/Presentation/views/login/widgits/custom_bottom.dart';
import 'package:black_market/Features/Auth/Presentation/views/login/widgits/lable_for_text_field.dart';
import 'package:black_market/Features/Auth/Presentation/views/signUp/signUp_view.dart';
import 'package:black_market/Features/home/presentation/Views/home/home_page.dart';
import 'package:black_market/core/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppBarWithArrow(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 61),
              child: Text(
                "تسجيل الدخول الى حسابك",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            LabelForTextField(name: "البريد الإلكتروني"),
            const CustomTextField(
                hint: 'أدخل البريد الإلكتروني',
                isPassword: false,
                labelPass: "Assets/images/Message.png"),
            LabelForTextField(name: "كلمة المرور"),
            const CustomTextField(
              hint: 'أدخل  كود المرور',
              labelPass: "Assets/images/Lock.png",
              isPassword: true,
            ),
            // CheckBoxAndForgetPassWordSec(),

            CustomBottom(
                bottomName: "تسجيل الدخول",
                color: ColorSelect.PColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                }),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Text(
                        " إنشاء حساب",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Color(0xFFFFF4B0)),
                      )),
                  Text("  لا تمتلك حساب؟",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF666666))),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: ColorSelect.SColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "أو",
                    style: TextStyle(
                        color: Color(0xFFFFFAD9),
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: ColorSelect.SColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
            CustomBottomWithIcon(
              bottomName: "اكمل باستخدام جوجل",
              color: ColorSelect.SColor,
              textColor: Colors.white,
            ),

          ],
        ),
      ),
    );
  }
}
//
// class CheckBoxAndForgetPassWordSec extends StatelessWidget {
//   const CheckBoxAndForgetPassWordSec({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           "هل نسيت كلمة المرور ؟",
//           style: TextStyle(fontSize: 12, color: Color(0xFFFFF4B0)),
//         ),
//         CheckboxExample(),
//       ],
//     );
//   }
// }
//
// class CheckboxExample extends StatefulWidget {
//   @override
//   _CheckboxExampleState createState() => _CheckboxExampleState();
// }
//
// class _CheckboxExampleState extends State<CheckboxExample> {
//   bool option1 = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         SizedBox(
//           height: 100,
//           child: CheckboxListTile(
//             title: Text('Option 1'),
//             value: option1,
//             onChanged: (value) {
//               setState(() {
//                 option1 = value!;
//               });
//             },
//             controlAffinity: ListTileControlAffinity.leading,
//             // Align checkbox to the left
//             activeColor:
//                 Colors.green, // Change the color of the checkbox when checked
//           ),
//         ),
//       ],
//     );
//   }
// }
