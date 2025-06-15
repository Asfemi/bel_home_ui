import 'package:intl/intl.dart';

extension NumCurrencyExtension on num {
  String toCurrency({String locale = 'en_GB', String symbol = '£'}) {
    final format = NumberFormat.currency(locale: locale, symbol: symbol);
    return format.format(this);
  }

  String toCompactCurrency({String locale = 'en_GB', String symbol = '£'}) {
    final format = NumberFormat.compactCurrency(locale: locale, symbol: symbol);
    return format.format(this);
  }
}
