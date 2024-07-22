import 'package:black_market/Features/Gold/data/models/gold_model.dart';
import 'package:black_market/Features/Gold/data/repo/gold_repo_impl.dart';
import 'package:black_market/Features/Gold/presentation/manger/gold_cubit/gold_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoldCubit extends Cubit<GoldState> {
  GoldCubit() : super(GoldInit());

  Future<List<Gold>?> fetchAllGold() async {
    emit(GoldLoading());
    try {
      var data = await GoldRepoImpl().fetchAllGold();
      emit(GoldSuccess(data)); // Ensure you emit the fetched data
      return data;
    } catch (e) {
      emit(GoldFailure(errorMessage: e.toString())); // Emit the error message in case of failure
      return null;
    }
  }
}