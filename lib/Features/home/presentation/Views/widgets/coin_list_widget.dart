import 'package:black_market/Features/home/data/model/currency.dart';
import 'package:black_market/Features/home/data/repo/home_repo_impl.dart';
import 'package:black_market/Features/home/presentation/Views/widgets/currency_list_view_item.dart';
import 'package:black_market/constant.dart';
import 'package:black_market/core/color.dart';
import 'package:flutter/material.dart';

class CoinListWidget extends StatelessWidget {
  const CoinListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: ColorSelect.SColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("بيع"),
                  Spacer(
                    flex: 1,
                  ),
                  Text("شراء"),
                  Spacer(
                    flex: 2,
                  ),
                  Text("العملة"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Divider(
                  thickness: .5,
                  color: Color(0xFF967373),
                ),
              ),
              FutureBuilder<List<Currency>>(
                future: HomeRepoImpl().fetchAllCurrency(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator(color: ColorSelect.PColor,));
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData) {
                    final currencyList = snapshot.data!;
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        final currency = currencyList[index];
                        return CurrencyListViewItem(
                          sellPrice: currency.rate * 48.13,
                          buyPrice:
                              (currency.rate + currency.rate * .01) * 48.13,
                          shortName: currency.shortName, name: currName[index], imageUrl: flagUrl[index],
                        );
                      },
                      itemCount: currencyList.length,
                      shrinkWrap: true,
                    );
                  } else {
                    return Center(child: Text('No data available'));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


















