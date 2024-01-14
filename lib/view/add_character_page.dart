import 'package:flutter/material.dart';
import 'package:healt_app/view/common/common_text_field.dart';
import 'package:healt_app/viewmodel/add_character_viewmodel.dart';
import 'package:provider/provider.dart';
 
class AddCharacterPage extends StatelessWidget {
  TextEditingController _hastaneAdiController = TextEditingController();
  TextEditingController _doktorAdiController = TextEditingController();
 TextEditingController _poliklinikController = TextEditingController();
  TextEditingController _muayeneController = TextEditingController();
  AddCharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Karakter Ekle"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                _buildHastaneAdiTextField(),
                SizedBox(height: 16),
                _buildDoktorAdiTextField(),
                 SizedBox(height: 16),
                   _buildPoliklinikTextField(),
                SizedBox(height: 16),
                _buildMuayeneTextField(),
              ],
            ),
            _buildAddCharacterButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHastaneAdiTextField() {
    return CommonTextField(
      controller: _hastaneAdiController,
      label: "Hastane Adı",
      fillColor: Colors.black,
    );
  }

  Widget _buildDoktorAdiTextField() {
    return CommonTextField(
      controller: _doktorAdiController,
      label: "Doktor Adı", fillColor: Colors.black,
    );
  }
  Widget _buildPoliklinikTextField() {
    return CommonTextField(
      controller: _poliklinikController,
      label: "Poliklinik",fillColor: Colors.black,
    );
  }

  Widget _buildMuayeneTextField() {
    return CommonTextField(
      fillColor: Colors.black,
      controller: _muayeneController,
      label: "Muayene",
    );
  }
  Widget _buildAddCharacterButton(BuildContext context) {
    AddCharacterViewModel viewModel = Provider.of(
      context,
      listen: false,
    );
    return ElevatedButton(
      child: Text("Karakter Ekle"),
      onPressed: () {
        viewModel.addCharacter(
          context,
          _hastaneAdiController.text.trim(),
          _doktorAdiController.text.trim(),
              _poliklinikController.text.trim(),
          _muayeneController.text.trim(),
        );
      },
    );
  }

}
