import 'package:intl/intl.dart';

class CurrencyConverter {
  CurrencyConverter(int price);

  //Note : Konversi Int 30000 menjadi String Rp. 30.000
  static String rpFormating(int value) {
    final rpFormat = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: 0,
    );
    return rpFormat.format(value);
  }

//Note : Konversi Int 30000 menjadi String 30.000
  static String rpFormatingNoSymbol(int value) {
    final rpFormat = NumberFormat.currency(
      locale: 'id',
      symbol: '',
      decimalDigits: 0,
    );
    return rpFormat.format(value);
  }

//Note : Konversi String 123.000 menjadi String 123000
  static String removeDots(String value) {
    return value.replaceAll('.', '');
  }

  //Note : Konversi String 123.000 menjadi int 123000
  static int intParse(String value) {
    String newValue = removeDots(value);
    return int.parse(newValue);
  }
}
