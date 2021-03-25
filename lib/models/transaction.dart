
import 'dart:convert';

import 'package:flutter/material.dart';

class Transaction {
  String recipient;
  String sender;
  String senderBank;
  String recipientBank;
  double amount;
  String description;
  double fees;
  DateTime timestamp;
  //temporary string rep of the timestamp
  String date;
  String time;
  Transaction({
    this.recipient,
    this.sender,
    this.recipientBank,
    this.senderBank,
    @required this.amount,
    @required this.description,
    @required this.fees,
    @required this.timestamp,
    @required this.date,
    @required this.time,
  });
  
  

  Map<String, dynamic> toMap() {
    return {
      'recipient': recipient,
      'sender': sender,
      'recipientBank': recipientBank,
      'amount': amount,
      'description': description,
      'fees': fees,
      'timestamp': timestamp.millisecondsSinceEpoch,
      'date': date,
      'time': time,
    };
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      recipient: map['recipient'],
      sender: map['sender'],
      recipientBank: map['recipientBank'],
      amount: map['amount'],
      description: map['description'],
      fees: map['fees'],
      timestamp: DateTime.fromMillisecondsSinceEpoch(map['timestamp']),
      date: map['date'],
      time: map['time'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Transaction.fromJson(String source) => Transaction.fromMap(json.decode(source));
}
