// this is a simulated raw data


import 'package:kuda_app_clone/models/airtime.dart';
import 'package:kuda_app_clone/models/beneficiary.dart';
import 'package:kuda_app_clone/models/transaction.dart';

class Data {
  Map data = <String, String>{
    "Kuda": 'assets/images/kuda.jpg',
    "GTBank Plc": 'assets/images/GTBank_logo.png',
    "United Bank for Africa": 'assets/images/acceleres.png',
    "Unknown Bank": 'assets/images/unknown.png',
  };
  var today = <Transaction>[
    Transaction(
        amount: -1000.00,
        recipient: 'Abdul-Kareem Ambali',
        time: '08:04 AM',
        timestamp: DateTime.now(),
        fees: 0.0,
        description: 'Data subscription',
        recipientBank: 'Kuda',
        date: '25 Mar, 2021'),
    Transaction(
        amount: 1400.00,
        sender: 'ABDULBAKI SHUAIB',
        time: '07:04 PM',
        timestamp: DateTime.now(),
        fees: 0.0,
        description: 'Manage am abeg',
        senderBank: 'Kuda',
        date: '25 Mar, 2021'),
  ];

  var yesterday = <Transaction>[
    Transaction(
        amount: 3500.00,
        sender: 'JIMOH INNOCENT TUNDE',
        time: '03:26 PM',
        timestamp: DateTime.now(),
        fees: 0.0,
        description: 'Soft Expense',
        senderBank: 'GTBank Plc',
        date: '24 Mar, 2021'),
  ];

  var third_data = <Transaction>[
    Transaction(
        amount: -2000.00,
        recipient: 'ECOSYSTEM ACCELEREX LA LANG',
        time: '01:45 PM',
        timestamp: DateTime.now(),
        fees: 0.0,
        description: 'Point of Sale - Ilorin',
        recipientBank: 'United Bank for Africa',
        date: '22 Mar, 2021'),
    Transaction(
        amount: -3000.00,
        recipient: 'Dola Bimbola Filling Station',
        time: '11:04 AM',
        timestamp: DateTime.now(),
        fees: 0.0,
        description: 'Fuel',
        recipientBank: 'Kuda',
        date: '22 Mar, 2021'),
    Transaction(
        amount: 5000.00,
        sender: 'JIMOH INNOCENT TUNDE',
        time: '03:26 PM',
        timestamp: DateTime.now(),
        fees: 0.0,
        description: 'FLUTTERWAVE TECHNOLO RI RING',
        senderBank: 'Unknown Bank',
        date: '22 Mar, 2021'),
  ];

  var beneficiaries = [
    Beneficiary(
      name: 'Sleek',
      bank: 'Kuda',
      accountNumber: '1100595351',
    ),
    Beneficiary(
        name: 'Dola Bimbola',
        bank: 'United Bank of Africa',
        accountNumber: '3067942537'),
    Beneficiary(
      name: 'My GTB',
      bank: 'GTBank Plc',
      accountNumber: '0408129724',
    ),
    Beneficiary(
        name: 'Tosin Peter',
        bank: 'United Bank of Africa',
        accountNumber: '2149255327'),
    Beneficiary(
      name: 'Hedge',
      bank: 'Kuda',
      accountNumber: '1100595351',
    ),
    Beneficiary(
      name: 'Mumeen',
      bank: 'GTBank Plc',
      accountNumber: '0408129724',
    ),
  ];

  var recentAirtime = [
    Airtime(phone: 08108678294, provider: 'mtn'),
    Airtime(phone: 08032030070, provider: 'glo'),
  ];
}
