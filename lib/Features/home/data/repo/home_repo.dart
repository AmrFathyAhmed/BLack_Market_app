import 'package:black_market/Features/home/data/model/currency.dart';

abstract class HomeRepo {

  Future<List<Currency>> fetchAllCurrency();
  Future<void> getUserData();
}
