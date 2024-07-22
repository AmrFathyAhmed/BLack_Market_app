import 'package:black_market/Features/home/presentation/Views/widgets/currency_list_view_item.dart';
import 'package:black_market/Features/home/presentation/manager/currency_cubit/currency_cubit.dart';
import 'package:black_market/Features/home/presentation/manager/currency_cubit/currency_state.dart';
import 'package:black_market/constant.dart';
import 'package:black_market/core/color.dart';
import 'package:black_market/core/widget/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinListWidget extends StatelessWidget {
  const CoinListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<CurrencyCubit, CurrencyState>(
      listener: (context, state) {
        if (state is CurrencyFailure) {
        Text(state.errorMessage);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorSelect.SColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Column(
              children: [
             const   Row(
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
                const   Padding(
                  padding:  EdgeInsets.symmetric(vertical: 12),
                  child: Divider(
                    thickness: .5,
                    color: Color(0xFF967373),
                  ),
                ),
                BlocBuilder<CurrencyCubit, CurrencyState>(
                  builder: (context, state) {
                    if (state is CurrencyLoading) {
                      return const  Center(
                        child: CustomLoadingAnimation()
                      );
                    } else if (state is CurrencyFailure) {
                      return Center(
                        child: Text('Error: ${state.errorMessage}'),
                      );
                    } else if (state is CurrencySuccess) {
                      final currencyList = state.currencies;
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          final currency = currencyList[index];
                          return CurrencyListViewItem(
                            sellPrice: currency.rate * 48.13,
                            buyPrice: (currency.rate + currency.rate * .01) * 48.13,
                            shortName: currency.shortName,
                            name: currName[index],
                            imageUrl: flagUrl[index],
                          );
                        },
                        itemCount: currencyList.length,
                        shrinkWrap: true,
                      );
                    } else {
                      return  const Center(child: Text('No data available'));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
