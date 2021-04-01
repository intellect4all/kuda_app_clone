import 'dart:convert';

class Beneficiary {
  String name;
  String bank;
  String accountNumber;
  Beneficiary({
    this.name,
    this.bank,
    this.accountNumber,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'bank': bank,
      'accountNumber': accountNumber,
    };
  }

  factory Beneficiary.fromMap(Map<String, dynamic> map) {
    return Beneficiary(
      name: map['name'],
      bank: map['bank'],
      accountNumber: map['accountNumber'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Beneficiary.fromJson(String source) =>
      Beneficiary.fromMap(json.decode(source));
}
