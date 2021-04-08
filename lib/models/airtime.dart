import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Airtime {
  int phone;
  String provider;
  Airtime({
    @required this.phone,
    @required this.provider,
  });

  Map<String, dynamic> toMap() {
    return {
      'phone': phone,
      'provider': provider,
    };
  }

  factory Airtime.fromMap(Map<String, dynamic> map) {
    return Airtime(
      phone: map['phone'],
      provider: map['provider'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Airtime.fromJson(String source) => Airtime.fromMap(json.decode(source));
}
