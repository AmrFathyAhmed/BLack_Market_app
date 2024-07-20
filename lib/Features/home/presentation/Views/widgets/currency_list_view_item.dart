import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrencyListViewItem extends StatelessWidget {
  const CurrencyListViewItem({
    Key? key,
    required this.buyPrice,
    required this.sellPrice,
    required this.shortName,
    required this.name,
    required this.imageUrl,
  }) : super(key: key);
  final double buyPrice;
  final double sellPrice;
  final String shortName;
  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "${sellPrice.toStringAsFixed(2)}",
            style: TextStyle(color: Color(0xFFFEDC00), fontSize: 12),
          ),
          Text("${buyPrice.toStringAsFixed(2)}",
              style: TextStyle(color: Color(0xFFFEDC00), fontSize: 12)),
          SizedBox(
            width: MediaQuery.of(context).size.width*.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*.34,
                  child: Text(
                    "$name / $shortName",
                    style: TextStyle(fontSize: 13),overflow: TextOverflow.ellipsis,textAlign: TextAlign.end,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                SizedBox(height: 18,
                  child: ClipOval(

                    child: AspectRatio(
                        aspectRatio: 1,
                        child: SvgPicture.network(
                          "$imageUrl",
                          fit: BoxFit.fill,
                          width: 16,
                          height: 16,
                        )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
