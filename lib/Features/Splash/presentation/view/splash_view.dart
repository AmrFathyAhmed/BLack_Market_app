import 'package:black_market/Features/Splash/presentation/view/widget/Splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget
{
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: SplashViewBody(),
    );
  }
}
