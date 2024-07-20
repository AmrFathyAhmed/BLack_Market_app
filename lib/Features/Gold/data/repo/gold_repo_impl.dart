import 'dart:convert';
import 'dart:developer';

import 'package:black_market/Features/Gold/data/models/gold_model.dart';
import 'package:http/http.dart' as http;

class GoldRepoImpl {
  Future<List<Gold>> fetchAllGold() async {
    final url = 'https://www.goldapi.io/api/XAU/EGP';
    final headers = {'x-access-token': 'goldapi-bq8slyudf7hu-io'};

    try {
      final response = await http.get(Uri.parse(url), headers: headers);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        log("Response data: $data");

        List<Gold> goldList = [
          Gold.fromJson('24', data['price_gram_24k']),
          Gold.fromJson('22', data['price_gram_22k']),
          Gold.fromJson('21', data['price_gram_21k']),
          Gold.fromJson('20', data['price_gram_20k']),
          Gold.fromJson('18', data['price_gram_18k']),
          Gold.fromJson('16', data['price_gram_16k']),
          Gold.fromJson('14', data['price_gram_14k']),
          Gold.fromJson('10', data['price_gram_10k']),
        ];

        return goldList;

      } else {
        log("Failed to load gold: ${response.statusCode} ${response.reasonPhrase}");
        throw Exception('Failed to load gold');
      }
    } catch (error) {
      log("Error fetching gold: $error");
      throw Exception('Failed to fetch gold: $error');
    }
  }
}
