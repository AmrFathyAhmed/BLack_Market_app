import 'package:black_market/Features/Gold/presentation/views/widgets/custom-card.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/custom-drop-list-item.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/custom-horizontal-list-view.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/gold-app-bar.dart';

import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';

class GoldPage extends StatefulWidget {
  const GoldPage({Key? key}) : super(key: key);

  @override
  State<GoldPage> createState() => _GoldPageState();
}

class _GoldPageState extends State<GoldPage> {
  Category? selectedCategory;

  @override
  void initState() {
    super.initState();
    // Set the default selected category to "Gold"
    selectedCategory = categoryList.firstWhere((category) => category.title == "الذهب");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: [
          GoldAppBar(),
          // Assuming  have GoldAppBar widget
          HorizontalCategoriesView(
            onCategorySelected: (category) {
              setState(() {
                selectedCategory = category;
              });
            },
          ),
          // Add SizedBox to create spacing
          SizedBox(height: 20),
          // Display different widget based on the selected category
          selectedCategory != null
              ? categoryWidgetMap[selectedCategory!.title] ?? Container()
              : Container(),

        ],
      ),
    );
  }
}

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

class HorizontalCategoriesView extends StatefulWidget {
  const HorizontalCategoriesView({Key? key, required this.onCategorySelected})
      : super(key: key);
  final Function(Category) onCategorySelected;

  @override
  State<HorizontalCategoriesView> createState() =>
      _HorizontalCategoriesViewState();
}

class _HorizontalCategoriesViewState extends State<HorizontalCategoriesView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10),
      child: Center(
        child: Container(
          height: 70,
          decoration: BoxDecoration(
              color: ColorSelect.SColor, borderRadius: BorderRadius.circular(20)),
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
                      categoryList[index].isSelected = true;
                    });
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
          color: widget.category.isSelected ? ColorSelect.PColor : Colors.transparent),
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
                      : Colors.grey,
                )),
          )),
    );
  }
}

// Mapping between category title and corresponding widget
final Map<String, Widget> categoryWidgetMap = {
  "العملات": CurrencyWidget(),
  "السبائك": AlloysWidget(),
  "الذهب": GoldWidget(),
};
final List coin =["ربع جنيه -  1 جرام","نص جنيه -  3 جرام","جنيه -  5 جرام"];

// Sample widget for demonstration
class CurrencyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHorizontalListView(), // Assuming this widget is your CustomHorizontalListView
        Container(
          height: 500,
          child: ListView.builder(
            itemCount: 3, // Replace itemCount with your actual item count
            itemBuilder: (context, index) {
              return CustomDropListItem(title: coin[index],);
            },
          ),
        ),
      ],
    );
  }
}class AlloysWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHorizontalListView(), // Assuming this widget is your CustomHorizontalListView
        Container(
         height: 500,
          child: ListView.builder(
            itemCount: 10, // Replace itemCount with your actual item count
            itemBuilder: (context, index) {
              return CustomDropListItem(title:  "${index+1} جرام",);
            },
          ),
        ),
      ],
    );
  }
}

// Sample widget for demonstration
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
/////////////