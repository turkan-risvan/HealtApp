import 'package:flutter/material.dart';
import 'package:healt_app/view/common/common_text_field.dart';
import 'package:healt_app/viewmodel/add_person_viewmodel.dart';

import 'package:provider/provider.dart';
 
class AddPersonPage extends StatelessWidget {
  TextEditingController _hastaneAdiController = TextEditingController();
  TextEditingController _doktorAdiController = TextEditingController();
 TextEditingController _poliklinikController = TextEditingController();
  TextEditingController _muayeneController = TextEditingController();
  AddPersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Randevu Ekle"),
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
            _buildAddPersonButton(context),
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
  Widget _buildAddPersonButton(BuildContext context) {
    AddPersonViewModel viewModel = Provider.of(
      context,
      listen: false,
    );
    return ElevatedButton(
      child: Text("Randevu Ekle"),
      onPressed: () {
        viewModel.addPerson(
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
