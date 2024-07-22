import 'package:black_market/Features/Gold/data/models/gold_model.dart';
import 'package:black_market/Features/Gold/presentation/manger/gold_cubit/gold_cubit.dart';
import 'package:black_market/Features/Gold/presentation/manger/gold_cubit/gold_state.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/custom-card.dart';
import 'package:black_market/core/widget/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoldCubit, GoldState>(
      builder: (context, state) {
        if (state is GoldLoading) {
          return const SizedBox(
            height: 400,
            child: Center(
              child: CustomLoadingAnimation()
            ),
          );
        } else if (state is GoldFailure) {
          return Center(
            child: Text('Error: ${state.errorMessage}'),
          );
        } else if (state is GoldSuccess) {
          final List<Gold> goldList = state.gold;

          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: goldList.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomCard(
                goldName: goldList[index].name,
                sellPrice: goldList[index].price + goldList[index].price * 0.001,
                buyPrice: goldList[index].price,
              );
            },
          );
        } else {
          return const  Center(child: Text('No data available'));
        }
      },
    );
  }
}
