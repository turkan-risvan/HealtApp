import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:healt_app/model/person.dart';
import 'package:healt_app/view/add_person_page.dart';

import 'package:healt_app/viewmodel/add_person_viewmodel.dart';
import 'package:provider/provider.dart';
 
class MainViewModel with ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final List<Person> _persons = [];


  List<Person> get persons => _persons;

  MainViewModel(){
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _getPersons();
    });
  }

  void _getPersons() async {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await _firestore.collection("persons").get();

    for (QueryDocumentSnapshot<Map<String, dynamic>> documentSnapshot
        in snapshot.docs) {
      Person person = Person.fromMap(
        documentSnapshot.id,
        documentSnapshot.data(),
      );
      _persons.add(person);
    }
    notifyListeners();
  }

  void openAddPersonPage(BuildContext context) {
    MaterialPageRoute pageRoute = MaterialPageRoute(
      builder: (context) => ChangeNotifierProvider(
        create: (context) => AddPersonViewModel(),
        child: AddPersonPage(),
      ),
    );
    Navigator.push(context, pageRoute).then((value){
      _persons.clear();
      _getPersons();
    });
  }
}
