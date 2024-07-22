import 'package:black_market/Features/home/data/model/currency.dart';

abstract class CurrencyState {}

class CurrencyInit extends CurrencyState {}

class CurrencyLoading extends CurrencyState {}

class CurrencySuccess extends CurrencyState {
  final List<Currency> currencies;

  CurrencySuccess(this.currencies);
}

class CurrencyFailure extends CurrencyState {
  final String errorMessage;

  CurrencyFailure({required this.errorMessage});
}
