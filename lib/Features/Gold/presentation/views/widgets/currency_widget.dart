import 'package:black_market/Features/Gold/presentation/views/widgets/custom-drop-list-item.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/custom-horizontal-list-view.dart';
import 'package:flutter/cupertino.dart';

final List coin = ["ربع جنيه -  1 جرام", "نص جنيه -  3 جرام", "جنيه -  5 جرام"];

class CurrencyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHorizontalListView(),
        // Assuming this widget is your CustomHorizontalListView
        Container(
          height: 500,
          child: ListView.builder(
            itemCount: 3, // Replace itemCount with your actual item count
            itemBuilder: (context, index) {
              return CustomDropListItem(
                title: coin[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
