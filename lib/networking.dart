import 'package:http/http.dart' as http;
import 'dart:convert';

String data, data1, data2;
//var btc, ltc, eth;
const apiKey = '2BCBFF49-C4B3-42C4-9D43-1C0C40BA54C6';

class BitCoin {
  Future getBTC(String BTC) async {
    http.Response response = await http.get(
        'https://rest.coinapi.io/v1/exchangerate/BTC/$BTC/?apikey=$apiKey');
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
//      btc = jsonDecode(data).toString();
//      return btc;
    } else {
      print(response.statusCode);
    }
  }

  Future getETH(String ETH) async {
    http.Response response1 = await http.get(
        'https://rest.coinapi.io/v1/exchangerate/ETH/$ETH/?apikey=$apiKey');
    if (response1.statusCode == 200) {
      String data1 = response1.body;
      return jsonDecode(data1);
//      eth = jsonDecode(data1).toString();
//      return eth;
    } else {
      print(response1.statusCode);
    }
  }

  Future getLTC(String LTC) async {
    http.Response response2 = await http.get(
        'https://rest.coinapi.io/v1/exchangerate/LTC/$LTC/?apikey=$apiKey');
    if (response2.statusCode == 200) {
      String data2 = response2.body;
      return jsonDecode(data2);
//      ltc = jsonDecode(data2).toString();
//      return ltc;
    } else {
      print(response2.statusCode);
    }
  }
}
