import 'dart:io';

void main() {
  Map<String, double> exchangeRates = {
    'USD': 84.5,
    'EUR': 97.2,
    'GBP': 115.8,
    'JPY': 0.77,
    'CNY': 13.2,
    'RUB': 1.13,
  };

  print('Exchange rates sale purchase to som');
  exchangeRates.forEach((currency, rate) {
    print('$currency ${rate.toStringAsFixed(2)}  ${(rate * 0.95).toStringAsFixed(2)}');
  });

  print('Select operation');
  print('1. Exchange soms for other currencies');
  print('2. Exchange another currency for som');
  int operation = int.parse(stdin.readLineSync()!);

  print('Select currencie');
  exchangeRates.keys.toList().asMap().forEach((index, currency) {
    print('${index + 1}. $currency');
  });
  int currencyIndex = int.parse(stdin.readLineSync()!) - 1;
  String selectedCurrency = exchangeRates.keys.toList()[currencyIndex];

  print('Enter amount');
  double amount = double.parse(stdin.readLineSync()!);

  if (operation == 1) {
    double result = amount / exchangeRates[selectedCurrency]!;
    print('You will get $result som for $amount $selectedCurrency');
  } else if (operation == 2) {
    double result = amount * exchangeRates[selectedCurrency]!;
    print('You need to pay $result som for $amount $selectedCurrency');
  } else {
    print('Error');
  }
}
