import 'package:black_market/Features/Auth/Presentation/views/login/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget
{
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: LoginViewBody(),
    );
  }
}
