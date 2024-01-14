import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:healt_app/model/character.dart';
 

class AddCharacterViewModel with ChangeNotifier{
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void addCharacter(BuildContext context, String hastaneAdi, String doktorAdi,String poliklinik, String muayene) async {
    Character character = Character(hastaneAdi, doktorAdi,poliklinik,muayene);
    await _firestore.collection("characters").doc().set(character.toMap());
    Navigator.pop(context);
  }

}