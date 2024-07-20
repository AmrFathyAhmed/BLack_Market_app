import 'package:black_market/Features/Gold/data/models/category_tap_bar_model.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/alloys_widget.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/category_tab-bar.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/currency_widget.dart';

import 'package:black_market/Features/Gold/presentation/views/widgets/gold-app-bar.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/gold_widget.dart';
import 'package:flutter/material.dart';

List<Category> categoryList = [
  Category("العملات", false),
  Category("السبائك", false),
  Category("الذهب", true),
];

final Map<String, Widget> categoryWidgetMap = {
  "العملات": CurrencyWidget(),
  "السبائك": AlloysWidget(),
  "الذهب": GoldWidget(),
};

class GoldViewBody extends StatefulWidget {
  const GoldViewBody({Key? key}) : super(key: key);

  @override
  State<GoldViewBody> createState() => _GoldViewBodyState();
}

class _GoldViewBodyState extends State<GoldViewBody> {
  Category? selectedCategory;

  @override
  void initState() {
    super.initState();

    selectedCategory =
        categoryList.firstWhere((category) => category.title == "العملات");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: [
          const GoldAppBar(),
          // Assuming  have GoldAppBar widget
          CategoryTapBar(
            onCategorySelected: (category) {
              setState(() {
                selectedCategory = category;
              });
            },
          ),

          const SizedBox(height: 20),
          selectedCategory != null
              ? categoryWidgetMap[selectedCategory!.title] ?? Container()
              : Container(),
        ],
      ),
    );
  }
}
