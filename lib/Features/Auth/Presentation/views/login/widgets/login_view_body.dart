import 'package:black_market/Features/Auth/Data/repo/auth_repo_impl.dart';
import 'package:black_market/Features/Auth/Presentation/views/login/widgets/customTextField.dart';
import 'package:black_market/Features/Auth/Presentation/views/login/widgets/custom_appbar.dart';
import 'package:black_market/Features/Auth/Presentation/views/login/widgets/custom_bottom.dart';
import 'package:black_market/Features/Auth/Presentation/views/login/widgets/lable_for_text_field.dart';
import 'package:black_market/Features/Auth/Presentation/views/signUp/signUp_view.dart';
import 'package:black_market/Features/home/presentation/Views/home_page.dart';
import 'package:black_market/core/color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              AppBarWithArrow(),
              const Padding(
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
              const SizedBox(
                height: 50,
              ),
              const LabelForTextField(name: "البريد الإلكتروني"),
              CustomTextField(
                hint: 'أدخل البريد الإلكتروني',
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
              const LabelForTextField(name: "كلمة المرور"),
              CustomTextField(
                hint: 'أدخل  كود المرور',
                labelPass: "Assets/images/Lock.png",
                isPassword: true,
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password.';
                  }
                  return null;
                },
              ),
              CustomBottom(
                  bottomName: "تسجيل الدخول",
                  color: ColorSelect.PColor,
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      print("Validation successful");
                      try {
                        print("Attempting to sign in");
                        print("Email: ${emailController.text}");
                        print("Password: ${passwordController.text}");

                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text,
                        );

                        print("Sign-in successful");

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided for that user.');
                        } else {
                          print('FirebaseAuthException: ${e.message}');
                        }
                      } on Exception catch (e) {
                        print('Exception: ${e.toString()}');
                      }
                    }
                  }
              ),
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
                        child: const Text(
                          " إنشاء حساب",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Color(0xFFFFF4B0)),
                        )),
                    const Text("  لا تمتلك حساب؟",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF666666))),
                  ],
                ),
              ),
              const Row(
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
              const SizedBox(
                height: 32,
              ),
              const CustomBottomWithIcon(
                bottomName: "اكمل باستخدام جوجل",
                color: ColorSelect.SColor,
                textColor: Colors.white,
              ),
            ],
          ),
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
