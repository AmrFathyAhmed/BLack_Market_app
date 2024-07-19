import 'package:black_market/Features/Gold/presentation/views/widgets/custom-card.dart';
import 'package:flutter/material.dart';

class GoldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return CustomCard();
      },
    );
  }
}
