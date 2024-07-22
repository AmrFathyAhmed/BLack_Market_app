import 'package:black_market/Features/Gold/data/models/gold_model.dart';
import 'package:black_market/Features/Gold/presentation/manger/gold_cubit/gold_cubit.dart';
import 'package:black_market/Features/Gold/presentation/manger/gold_cubit/gold_state.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/custom-drop-list-item.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/custom-horizontal-list-view.dart';
import 'package:black_market/core/widget/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final List coin = ["ربع جنيه -  1 جرام", "نص جنيه -  3 جرام", "جنيه -  5 جرام"];

class CurrencyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHorizontalListView(),
        BlocBuilder<GoldCubit, GoldState>(
          builder: (context, state) {
            if (state is GoldLoading) {
              return const SizedBox(
                height: 400,
                child: Center(
                    child: CustomLoadingAnimation()
                ),
              );
            }  else if (state is GoldFailure) {
              return Center(child: Text('Error: ${state.errorMessage}'));
            } else if (state is GoldSuccess) {
              final List<Gold> goldList = state.gold;

              return ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return CustomDropListItem2(
                    gold: goldList,
                    index: index + 1,
                    title: coin[index],
                  );
                },
              );
            } else {
              return const Text("No data available");
            }
          },
        ),
      ],
    );
  }
}
