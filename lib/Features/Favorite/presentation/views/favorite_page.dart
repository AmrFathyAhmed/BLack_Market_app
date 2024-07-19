import 'package:black_market/Features/Gold/presentation/views/widgets/custom-card.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/custom_card_with_heart.dart';
import 'package:black_market/Features/Profile/presentation/views/profile_page.dart';
import 'package:flutter/material.dart';

class FavoritePage  extends StatelessWidget
{
  const FavoritePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          TextAppBar(title: "المفضلة"),

          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return CustomCardWithHeart();
            },
          ),


        ],
      ),
    );
  }
}
