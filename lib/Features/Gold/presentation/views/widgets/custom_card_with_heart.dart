import 'package:black_market/core/color.dart';
import 'package:black_market/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCardWithHeart extends StatelessWidget {
  const CustomCardWithHeart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
            color: ColorSelect.SColor, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 26,
                    height: 26,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey.withOpacity(.75), width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Center(
                          child: SvgPicture.asset("Assets/images/hear-selectedt.svg",
                              width: 12)),
                    ),
                  ),

                  Spacer(
                    flex: 5,
                  ),
                  CircleAvatar(
                    radius: 26,
                    backgroundImage:
                    AssetImage(Assets.imagesBankImage),
                  ),
                  Spacer(
                    flex: 5,

                  ),
                  Container(
                    width: 26,
                    height: 26,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey.withOpacity(.75), width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Center(
                          child: SvgPicture.asset("Assets/images/GoldShare.svg",
                              width: 12)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "بنك مصر",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      Text(
                        "بيع",
                        style: TextStyle(
                            fontSize: 9, color: Colors.white.withOpacity(.79)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "31.25 ج.م",
                        style:
                        TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26.0),
                    child: Container(
                      height: 15,
                      width: 1,
                      color: Colors.grey.withOpacity(.5),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "شراء",
                        style: TextStyle(
                            fontSize: 9, color: Colors.white.withOpacity(.79)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "30.24 ج.م",
                        style:
                        TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
