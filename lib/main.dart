import 'package:flutter/material.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String currencyShow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Crypto Tracker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 36.0, 18.0, 0),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade900,
                  offset: Offset(5, 5),
                  blurRadius: 15,
                  spreadRadius: 0.5,
                ),
                BoxShadow(
                  color: Colors.grey.shade800,
                  offset: Offset(-5, -5),
                  blurRadius: 15,
                  spreadRadius: 0.5,
                ),
              ]),
              child: Card(
                color: Colors.grey.shade900,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                  child: Text(
                    '1 BTC = ? USD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.grey.shade900,
            child: DropdownButton(
              value: currencyShow,
              items: [
                DropdownMenuItem(
                  child: Text('Dolar'),
                  value: 'Dolar',
                ),
                DropdownMenuItem(
                  child: Text('Euro'),
                  value: 'Euro',
                ),
                DropdownMenuItem(
                  child: Text('TL'),
                  value: 'TL',
                )
              ],
              onChanged: (value) {
                setState(() {
                  currencyShow = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
