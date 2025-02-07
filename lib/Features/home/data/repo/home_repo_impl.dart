import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:black_market/Features/home/data/model/currency.dart';
import 'package:black_market/Features/home/data/repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  Future<List<Currency>> fetchAllCurrency() async {
    Uri url = Uri.parse("https://api.freecurrencyapi.com/v1/latest?apikey=fca_live_0yCfaMUHLPxIyZYyAptQSNfGRYRNONrlPL9vcJ3k&currencies=USD%2CEUR%2CCAD%2CJPY%2CRUB%2CAUD%2CCNY%2CINR%2CGBP");
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      CurrencyResponse currencyResponse = CurrencyResponse.fromJson(data);

      return currencyResponse.currencies;
    } else {
      throw Exception('Failed to load currencies');
    }
  }

  @override
  Future<String> getUserData() async {
      User? currentUser = FirebaseAuth.instance.currentUser;
      CollectionReference userInfo =
      FirebaseFirestore.instance.collection("Users");
      QuerySnapshot querySnapshot = await userInfo
          .where("UserEmail", isEqualTo: "${currentUser?.email}")
          .get();

      if (querySnapshot.size > 0) {
        var data = querySnapshot.docs[0].data() as Map<String, dynamic>;

         var name = data["UserName"] ?? "Unknown";

     return name;
      }
      return "";
    }

}
