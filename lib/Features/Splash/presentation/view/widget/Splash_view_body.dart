import 'package:black_market/Features/Auth/Presentation/views/login/Login_view.dart';
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
  }


  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(color:const Color(0xFFFEDC00),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FadeTransition(
              opacity: fadingAnimation, child: Image(image: AssetImage("Assets/images/image 1 (1).png"),)),
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
void goToNextView() {
  Future.delayed(const Duration(seconds: 3), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
  });
}}


