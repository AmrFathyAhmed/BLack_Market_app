import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomLoadingAnimation extends StatelessWidget {
  const CustomLoadingAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(

      child: LoadingAnimationWidget.staggeredDotsWave(

        color: ColorSelect.PColor,
        size: 200,
      ),
    );
  }
}

