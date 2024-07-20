import 'package:black_market/Features/Gold/data/models/gold_model.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/item_info_row.dart';
import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDropListItem extends StatefulWidget {
  const CustomDropListItem({Key? key,required this.gold, required this.index})
      : super(key: key);
  final int index;
  final List<Gold> gold;

  @override
  _CustomDropListItemState createState() => _CustomDropListItemState();
}

class _CustomDropListItemState extends State<CustomDropListItem> {
  bool isContainerVisible = false;

  // Example difference calculation
  @override
  Widget build(BuildContext context) {
    final double goldPrice = widget.gold[1].price * (widget.index);
    final double manufacturingCostPerGram =
        50.0 * (widget.index); // Example fixed value
    final double taxPercentage = 0.15; // Example 15% tax
    final double importCost = 100.0; // Example fixed import cost

    final double totalTax = goldPrice * taxPercentage;
    final double priceIncludingTaxAndManufacturing =
        goldPrice + manufacturingCostPerGram + totalTax;
    final double difference = priceIncludingTaxAndManufacturing - goldPrice;
    return GestureDetector(
      onTap: () {
        setState(() {
          // Toggle the visibility of the container
          isContainerVisible = !isContainerVisible;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: ColorSelect.SColor, // Change color as needed
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(18),
                    topRight: const Radius.circular(18),
                    bottomLeft: isContainerVisible == true
                        ? Radius.zero
                        : const Radius.circular(18),
                    bottomRight: isContainerVisible == true
                        ? Radius.zero
                        : const Radius.circular(18)),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    right: 22,
                    left: 22,
                    top: 13,
                    bottom: isContainerVisible == true ? 7 : 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isContainerVisible == true
                        ? SvgPicture.asset("Assets/images/arrow-up.svg")
                        : // Use your SVG asset here
                        SvgPicture.asset("Assets/images/arrow-down.svg"),
                    // Use your SVG asset here
                    Text(
                      "${widget.index} جرام",
                      style: const TextStyle(fontSize: 16),
                      textDirection: TextDirection.rtl,
                    )
                  ],
                ),
              ),
            ),
            if (isContainerVisible)
              Container(
                  decoration: const BoxDecoration(
                      color: ColorSelect.SColor, // Change color as needed
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(18))),
                  // Your container to appear when tapped
                  width: double.infinity,
                  // Adjust height as needed
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      children: [
                        Divider(
                          thickness: .5,
                          color: Colors.grey.withOpacity(.25),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        ItemInfoRow(title: "سعر الجرام", price: goldPrice),
                        ItemInfoRow(
                            title: "مصنعية الجرام",
                            price: manufacturingCostPerGram),
                        ItemInfoRow(title: "الضربية الكلية", price: totalTax),
                        ItemInfoRow(
                            title: "السعر شامل الضريبة و المصنعية",
                            price: priceIncludingTaxAndManufacturing,
                            isPrime: true),
                        ItemInfoRow(title: "مبلغ الاستيراد", price: importCost),
                        ItemInfoRow(title: "الفرق", price: difference),
                        SizedBox(
                          height: 12,
                        )
                      ],
                    ),
                  )),
          ],
        ),
      ),
    );
  }
}

class CustomDropListItem2 extends StatefulWidget {
  const CustomDropListItem2({Key? key, required  this.gold, required this.index, required this.title})
      : super(key: key);
  final int index;
  final List<Gold> gold;
  final String title;

  @override
  _CustomDropListItem2State createState() => _CustomDropListItem2State();
}

class _CustomDropListItem2State extends State<CustomDropListItem2> {
  bool isContainerVisible = false;

  @override
  Widget build(BuildContext context) {
    final List goldWight=[1,1,3,5];
    final double goldPrice = widget.gold[1].price * (goldWight[widget.index]);
    final double manufacturingCostPerGram =
        50.0 * (widget.index); // Example fixed value
    final double taxPercentage = 0.15; // Example 15% tax
    final double importCost = 100.0; // Example fixed import cost

    final double totalTax = goldPrice * taxPercentage;
    final double priceIncludingTaxAndManufacturing =
        goldPrice + manufacturingCostPerGram + totalTax;
    final double difference = priceIncludingTaxAndManufacturing - goldPrice;
    return GestureDetector(
      onTap: () {
        setState(() {
          // Toggle the visibility of the container
          isContainerVisible = !isContainerVisible;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: ColorSelect.SColor, // Change color as needed
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(18),
                    topRight: const Radius.circular(18),
                    bottomLeft: isContainerVisible == true
                        ? Radius.zero
                        : const Radius.circular(18),
                    bottomRight: isContainerVisible == true
                        ? Radius.zero
                        : const Radius.circular(18)),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    right: 22,
                    left: 22,
                    top: 13,
                    bottom: isContainerVisible == true ? 7 : 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isContainerVisible == true
                        ? SvgPicture.asset("Assets/images/arrow-up.svg")
                        : // Use your SVG asset here
                    SvgPicture.asset("Assets/images/arrow-down.svg"),
                    // Use your SVG asset here
                    Text(
                      widget.title,
                      style: const TextStyle(fontSize: 16),
                      textDirection: TextDirection.rtl,
                    )
                  ],
                ),
              ),
            ),
            if (isContainerVisible)
              Container(
                  decoration: const BoxDecoration(
                      color: ColorSelect.SColor, // Change color as needed
                      borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(18))),
                  // Your container to appear when tapped
                  width: double.infinity,
                  // Adjust height as needed
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      children: [
                        Divider(
                          thickness: .5,
                          color: Colors.grey.withOpacity(.25),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        ItemInfoRow(title: "سعر الجرام", price: goldPrice),
                        ItemInfoRow(
                            title: "مصنعية الجرام",
                            price: manufacturingCostPerGram),
                        ItemInfoRow(title: "الضربية الكلية", price: totalTax),
                        ItemInfoRow(
                            title: "السعر شامل الضريبة و المصنعية",
                            price: priceIncludingTaxAndManufacturing,
                            isPrime: true),
                        ItemInfoRow(title: "مبلغ الاستيراد", price: importCost),
                        ItemInfoRow(title: "الفرق", price: difference),
                        SizedBox(
                          height: 12,
                        )
                      ],
                    ),
                  )),
          ],
        ),
      ),
    );
  }
}
