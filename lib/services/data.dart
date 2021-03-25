// this is a simulated raw data

import 'package:kuda_app_clone/models/transaction.dart';

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
      time: '08:04 AM',
      timestamp: DateTime.now(),
      fees: 0.0,
      description: 'Data subscription',
      recipientBank: 'United Bank for Africa',
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