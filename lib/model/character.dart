import 'package:flutter/material.dart';

class Character with ChangeNotifier {
  String? id;
  String hastaneAdi;
  String doktorAdi;
   String poliklinik;
   String muayene;

  Character(this.hastaneAdi, this.doktorAdi,this.poliklinik, this.muayene);

  Character.fromMap(this.id, Map<String, dynamic> map)
      : hastaneAdi = map["hastaneAdi"],
        doktorAdi = map["doktorAdi"],
        poliklinik = map["poliklinik"],
        muayene = map["muayene"];

  Map<String, dynamic> toMap() {
    return {
      "hastaneAdi": hastaneAdi,
      "doktorAdi": doktorAdi,
      "poliklinik": poliklinik,
      "muayene": muayene,
    };
  }
}
