import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:healt_app/model/character.dart';
import 'package:healt_app/view/add_character_page.dart';
import 'package:healt_app/viewmodel/add_character_viewmodel.dart';
import 'package:provider/provider.dart';
 
class MainViewModel with ChangeNotifier {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  List<Character> _characters = [];


  List<Character> get characters => _characters;

  MainViewModel(){
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _getCharacters();
    });
  }

  void _getCharacters() async {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await _firestore.collection("characters").get();

    for (QueryDocumentSnapshot<Map<String, dynamic>> documentSnapshot
        in snapshot.docs) {
      Character character = Character.fromMap(
        documentSnapshot.id,
        documentSnapshot.data(),
      );
      _characters.add(character);
    }
    notifyListeners();
  }

  void openAddCharacterPage(BuildContext context) {
    MaterialPageRoute pageRoute = MaterialPageRoute(
      builder: (context) => ChangeNotifierProvider(
        create: (context) => AddCharacterViewModel(),
        child: AddCharacterPage(),
      ),
    );
    Navigator.push(context, pageRoute).then((value){
      _characters.clear();
      _getCharacters();
    });
  }
}
