import 'package:black_market/Features/Gold/data/models/gold_model.dart';

abstract class GoldState {}

class GoldInit extends GoldState{}

class GoldLoading extends GoldState {}

class GoldSuccess extends GoldState {
  final List<Gold> gold;

 GoldSuccess(this.gold);
}

class GoldFailure extends GoldState{
  final String errorMessage;

 GoldFailure({required this.errorMessage});
}
