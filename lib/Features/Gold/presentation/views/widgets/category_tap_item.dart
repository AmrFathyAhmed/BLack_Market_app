import 'package:black_market/Features/Gold/data/models/category_tap_bar_model.dart';
import 'package:black_market/core/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  final Category category;
  final Function(bool) onPressed;

  const CategoryCard(
      {required this.category, required this.onPressed, Key? key})
      : super(key: key);

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width*.26,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color:
          widget.category.isSelected ? ColorSelect.PColor : Colors.transparent),
      child: TextButton(

          style: ButtonStyle(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            widget.onPressed(true);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(widget.category.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: widget.category.isSelected
                        ? Colors.black
                        : Colors.grey)),
          )),
    );
  }
}
