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

class CoinData {
  Future getData(String selectedCurrency) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      http.Response response =
          await http.get('$tickerURL/$crypto$selectedCurrency');

      var coinData = jsonDecode(response.body);

      double lastPrice = coinData['last'];
      cryptoPrices[crypto] = lastPrice.toStringAsFixed(0);
    }
    return cryptoPrices;
  }
}
