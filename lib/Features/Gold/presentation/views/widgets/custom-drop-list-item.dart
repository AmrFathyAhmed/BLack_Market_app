
import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDropListItem extends StatefulWidget
{
  const CustomDropListItem({Key? key, this.title= "1 جرام"}) : super(key: key);
final String? title;
  @override
  _CustomDropListItemState createState() => _CustomDropListItemState();
}

class _CustomDropListItemState extends State<CustomDropListItem> {
  bool isContainerVisible = false;

  @override
  Widget build(BuildContext context) {
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
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                    bottomLeft: isContainerVisible == true
                        ? Radius.zero
                        : Radius.circular(18),
                    bottomRight: isContainerVisible == true
                ? Radius.zero
                    : Radius.circular(18)),
              ),
              child: Padding(
                padding:
                 EdgeInsets.only(right:   22,left: 22, top: 13,bottom: isContainerVisible ==true?7:13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isContainerVisible == true
                        ? SvgPicture.asset("Assets/images/arrow-up.svg")
                        : // Use your SVG asset here
                    SvgPicture.asset("Assets/images/arrow-down.svg"),
                    // Use your SVG asset here
                    Text(
                     "${widget.title}",
                      style: TextStyle(fontSize: 16),
                      textDirection: TextDirection.rtl,
                    )
                  ],
                ),
              ),
            ),
            if (isContainerVisible)
              Container(
                  decoration: BoxDecoration(
                      color: ColorSelect.SColor, // Change color as needed
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(18))
                  ),
                  // Your container to appear when tapped
                  width: double.infinity,
                  // Adjust height as needed
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(children: [
                      Divider(thickness: .5,color: Colors.grey.withOpacity(.25),),
                      SizedBox(height: 4,),
                      ItemInfoRow(title: "سعر الجرام", price: "2500 ج.م"),
                      ItemInfoRow(title: "مصنعية الجرام", price: "2500 ج.م"),
                      ItemInfoRow(title: "الضربية الكلية", price: "2500 ج.م"),
                      ItemInfoRow(title: "السعر شامل الضريبة و المصنعية", price: "2500 ج.م",isPrime: true,),
                      ItemInfoRow(title: "مبلغ الاستيراد", price: "2500 ج.م"),
                      ItemInfoRow(title: "الفرق", price: "2500 ج.م"),
                      SizedBox(height: 12,)
                    ],),
                  )
              ),
          ],
        ),
      ),
    );
  }
}
class ItemInfoRow extends StatelessWidget {
  const ItemInfoRow({Key? key, required this.title, required this.price,  this.isPrime=false}) : super(key: key);
  final String title;
  final String price;
  final bool? isPrime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("2500 ج.م",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: isPrime==true?ColorSelect.PColor:Colors.white70),textDirection: TextDirection.rtl,),
          Text("$title",style: TextStyle(
            fontSize:14,fontWeight: FontWeight.w400, color: isPrime==true?ColorSelect.PColor:Colors.white70)
          ),
        ],
      ),
    ) ;
  }
}
