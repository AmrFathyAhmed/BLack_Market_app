import 'package:black_market/Features/Gold/data/models/gold_model.dart';
import 'package:black_market/Features/Gold/data/repo/gold_repo_impl.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/custom-drop-list-item.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/custom-horizontal-list-view.dart';
import 'package:black_market/core/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List coin = ["ربع جنيه -  1 جرام", "نص جنيه -  3 جرام", "جنيه -  5 جرام"];

class CurrencyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHorizontalListView(),
        FutureBuilder<List<Gold>>(
          future: GoldRepoImpl().fetchAllGold(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return SizedBox(
                  height: 100,
                  child: Center(
                      child: CircularProgressIndicator(
                        color: ColorSelect.PColor,
                      )));
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              final List<Gold> goldList = snapshot.data!;

              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return CustomDropListItem2(
                      gold: goldList,
                      index: index+1, title: coin[index],
                    );});
            } else {
              return Text("has no data");
            }
          },
        )
      ],
    );
  }
}
