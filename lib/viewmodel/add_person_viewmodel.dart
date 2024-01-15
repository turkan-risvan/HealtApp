import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:healt_app/model/person.dart';
 

class AddPersonViewModel with ChangeNotifier{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void addPerson(BuildContext context, String hastaneAdi, String doktorAdi,String poliklinik, String muayene) async {
    Person person = Person(hastaneAdi, doktorAdi,poliklinik,muayene);
    await _firestore.collection("persons").doc().set(person.toMap());
    Navigator.pop(context);
  }

}