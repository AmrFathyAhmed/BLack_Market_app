import 'package:black_market/Features/Auth/Data/repo/auth_repo_impl.dart';
import 'package:black_market/Features/Auth/Presentation/views/login/widgets/customTextField.dart';
import 'package:black_market/Features/Auth/Presentation/views/login/widgets/custom_appbar.dart';
import 'package:black_market/Features/Auth/Presentation/views/login/widgets/custom_bottom.dart';
import 'package:black_market/Features/Auth/Presentation/views/login/widgets/lable_for_text_field.dart';

import 'package:black_market/core/color.dart';
import 'package:flutter/cupertino.dart';

class SignUPBody extends StatelessWidget {

  const SignUPBody({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    final TextEditingController nameController = TextEditingController();

    final TextEditingController emailController = TextEditingController();

    final TextEditingController passwordController = TextEditingController();

    final TextEditingController confirmPasswordController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            AppBarWithArrow(title: "إنشاء حساب جديد"),
            SizedBox(height: 26),
            LabelForTextField(name: "الاسم بالكامل"),
            CustomTextField(
              hint: "أدخل الاسم بالكامل",
              isPassword: false,
              labelPass: "Assets/images/Profile.png",
              controller: nameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name.';
                }
                return null;
              },
            ),
            LabelForTextField(name: "البريد الإلكتروني"),
            CustomTextField(
              hint: "أدخل البريد الإلكتروني",
              isPassword: false,
              labelPass: "Assets/images/Message.png",
              controller: emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email.';
                }
                return null;
              },
            ),
            LabelForTextField(name: "كلمة المرور"),
            CustomTextField(
              hint: "أدخل  كود المرور",
              isPassword: true,
              labelPass: "Assets/images/Lock.png",
              controller: passwordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a password.';
                }
                return null;
              },
            ),
            LabelForTextField(name: "تأكيد كلمة المرور"),
            CustomTextField(
              hint: "أدخل  كود المرور",
              isPassword: true,
              labelPass: "Assets/images/Lock.png",
              controller: confirmPasswordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please confirm your password.';
                } else if (value != passwordController.text) {
                  return 'Passwords do not match.';
                }
                return null;
              },
            ),
            SizedBox(height: 36),
            CustomBottom(
              bottomName: "  إنشاء حساب",
              color: ColorSelect.PColor,
              onPressed: () {
                _formKey.currentState?.save();
                if (_formKey.currentState!.validate()) {
                  try {
                    AuthRepoImpl().signUp(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                  } on Exception catch (e) {
                  print(e);
                  }
                }

              },
            ),
            SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
