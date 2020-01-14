import 'package:http/http.dart' as http;
import 'dart:convert';

const tickerURL = 'https://apiv2.bitcoinaverage.com/indices/global/ticker';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

// class CoinData {
//   Future getCoinData() async {
//     NetworkHelper networkHelper = NetworkHelper('$tickerURL/BTCUSD');

//     var coinData = await networkHelper.getData();

//     print(coinData);
//     return coinData;
//   }
// }

// class NetworkHelper {
//   NetworkHelper(this.url);
//   final String url;

//   Future getData() async {
//     http.Response response = await http.get(url);
//     var data = response.body;
//     return jsonDecode(data);
//   }
// }

// * Yukardaki Networkhelper ve Coinhelper classlarının tek sefer hali

class CoinData {
  Future getData(String selectedCurrency) async {
    http.Response response = await http.get('$tickerURL/BTC$selectedCurrency');

    var coinData = jsonDecode(response.body);

    double lastPrice = coinData['last'];

    return lastPrice.toStringAsFixed(0);
  }
}
