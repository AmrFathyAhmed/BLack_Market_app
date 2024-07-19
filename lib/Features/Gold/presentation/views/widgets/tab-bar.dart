import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';

class Category {
  final String title;
  bool isSelected;
  Category(this.title, this.isSelected);
}

List<Category> categoryList = [
  Category("العملات", false),
  Category("السبائك", false),
  Category("الذهب", true),



];

class HorizontalCategoriesView extends StatefulWidget
{
  const HorizontalCategoriesView({Key? key, required this.onCategorySelected}) : super(key: key);
  final Function(Category) onCategorySelected;
  @override
  State<HorizontalCategoriesView> createState() =>
      _HorizontalCategoriesViewState();
}

class _HorizontalCategoriesViewState extends State<HorizontalCategoriesView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 10),
      child: Center(
        child: Container(

          height: 70,

            decoration: BoxDecoration(
                color: ColorSelect.SColor,
              borderRadius: BorderRadius.circular(20)
            ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryList.length,
              itemBuilder: (context, index) {
                return CategoryCard(
                  category: categoryList[index],
                  onPressed: (b) {
                    categoryList.forEach((category) {
                      category.isSelected = false;
                    });
                    setState(() {

                      categoryList[index].isSelected = true;                    });
                    widget.onCategorySelected(categoryList[index]);
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

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
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color:
          widget.category.isSelected ? ColorSelect.PColor : Colors.transparent),
      child: TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            widget.onPressed(true);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(widget.category.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                    color: widget.category.isSelected
                        ? Colors.black
                        : Colors.grey)),
          )),
    );
  }
}
