
import 'package:black_market/Features/home/presentation/Views/widgets/Chart_Widget.dart';
import 'package:black_market/Features/home/presentation/Views/widgets/avarage_widget.dart';
import 'package:black_market/Features/home/presentation/Views/widgets/coin_list_widget.dart';
import 'package:black_market/Features/home/presentation/Views/widgets/home_main_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HomeMainWidget(),
        LineChartSample2(),
        AverageWidget(),
        CoinListWidget()
      ],
    );
  }
}




