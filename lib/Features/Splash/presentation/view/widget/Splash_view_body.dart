import 'package:black_market/Features/Auth/Presentation/views/login/Login_view.dart';
import 'package:black_market/generated/assets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {


  late AnimationController animationController;
  late Animation<double> fadingAnimation;

  @override
  void initState() {
    super.initState();
    initFadingAnimation();
    goToNextView();

  }


  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xFFFEDC00),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FadeTransition(
              opacity: fadingAnimation,
              child: Image(image: AssetImage(Assets.imagesLogo),)),
        ],
      ),
    );
  }

//====================================================
  void initFadingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController);
    animationController.repeat(reverse: true);
    goToNextView();
  }

//==================================================================
  bool? isLogin;

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      var user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        isLogin = false;
      } else {
        isLogin = true;
      }
      Navigator.pushReplacementNamed(
        context,
        isLogin == false ? "LoginView" : "HomeView",
      );
    });
  }

}
