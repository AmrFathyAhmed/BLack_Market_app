class Currency {
  final String shortName;
  final double rate;

  Currency({required this.shortName, required this.rate});

  factory Currency.fromJson(String shortName, double rate) {
    return Currency(
      shortName: shortName,
      rate: rate,
    );
  }
}

class CurrencyResponse {
  final List<Currency> currencies;

  CurrencyResponse({required this.currencies});

  factory CurrencyResponse.fromJson(Map<String, dynamic> json) {
    List<Currency> currencies = [];
    json['data'].forEach((key, value) {
      currencies.add(Currency.fromJson(key, value));
    });

    return CurrencyResponse(currencies: currencies);
  }
}
