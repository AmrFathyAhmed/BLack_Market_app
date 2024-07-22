import 'package:black_market/Features/home/data/model/currency.dart';
import 'package:black_market/Features/home/data/repo/home_repo_impl.dart';
import 'package:black_market/Features/home/presentation/manager/currency_cubit/currency_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyCubit extends Cubit<CurrencyState> {
  CurrencyCubit() : super(CurrencyInit());

  Future<List<Currency>?> fetchAllCurrency() async {
    emit(CurrencyLoading());
    try {
      var data = await HomeRepoImpl().fetchAllCurrency();
      emit(CurrencySuccess(data));
      return data;
    } catch (e) {
      emit(CurrencyFailure(errorMessage: e.toString()));
      return null;
    }
  }
}
