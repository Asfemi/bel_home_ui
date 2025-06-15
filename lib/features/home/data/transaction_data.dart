import 'package:bel_home_ui/gen/assets.gen.dart';

class TransactionData {
  static List<Map<String, dynamic>> get transactions => [
    {
      'icon': Assets.icons.send3,
      'name': 'Miracle Sahid',
      'type': 'Transfer',
      'date': 'Apr 26 2023',
      'amount': '-₦94,249.00',
      'isCredit': true,
    },
    {
      'icon': Assets.icons.refresh2,
      'name': 'GBP to NGN',
      'type': 'Convert',
      'date': 'Apr 15 2023',
      'amount': '£104.00',
      'isCredit': false,
    },
    {
      'icon': Assets.icons.walletAdd,
      'name': 'Samuel Abram',
      'type': 'GBP Wallet funding',
      'date': 'Apr 08 2023',
      'amount': '+£104.00',
      'isCredit': true,
    },
    {
      'icon': Assets.icons.walletAdd,
      'name': 'Samuel Abram',
      'type': 'GBP Wallet funding',
      'date': 'Apr 08 2023',
      'amount': '+£104.00',
      'isCredit': true,
    },
  ];
}
