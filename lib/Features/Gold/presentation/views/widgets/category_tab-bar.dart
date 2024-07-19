import 'package:black_market/Features/Gold/data/models/category_tap_bar_model.dart';
import 'package:black_market/Features/Gold/presentation/views/gold_view_body.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/category_tap_item.dart';
import 'package:black_market/core/color.dart';
import 'package:flutter/cupertino.dart';

class CategoryTapBar extends StatefulWidget {
  const CategoryTapBar({Key? key, required this.onCategorySelected})
      : super(key: key);
  final Function(Category) onCategorySelected;

  @override
  State<CategoryTapBar> createState() =>
      _CategoryTapBarState();
}

class _CategoryTapBarState extends State<CategoryTapBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10),
      child: Center(
        child: Container(
          height: 70,
          decoration: BoxDecoration(
              color: ColorSelect.SColor,
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(categoryList.length, (index) {
                return CategoryCard(
                  category: categoryList[index],
                  onPressed: (b) {
                    categoryList.forEach((category) {
                      category.isSelected = false;
                    });
                    setState(() {
                      categoryList[index].isSelected = true;
                    });
                    widget.onCategorySelected(categoryList[index]);
                  },
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
