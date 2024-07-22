import 'package:black_market/Features/Gold/data/models/gold_model.dart';
import 'package:black_market/Features/Gold/presentation/manger/gold_cubit/gold_cubit.dart';
import 'package:black_market/Features/Gold/presentation/manger/gold_cubit/gold_state.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/custom-drop-list-item.dart';
import 'package:black_market/Features/Gold/presentation/views/widgets/custom-horizontal-list-view.dart';
import 'package:black_market/core/widget/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlloysWidget extends StatelessWidget {
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
                itemCount: goldList.length,
                itemBuilder: (context, index) {
                  return CustomDropListItem(
                    gold: goldList,
                    index: index +1,
                  );
                },
              );
            } else {
              return Text("No data available");
            }
          },
        ),
      ],
    );
  }
}
