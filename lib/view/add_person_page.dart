import 'package:flutter/material.dart';
import 'package:healt_app/view/common/common_text_field.dart';
import 'package:healt_app/viewmodel/add_person_viewmodel.dart';

import 'package:provider/provider.dart';
 
class AddPersonPage extends StatelessWidget {
  final TextEditingController _hastaneAdiController = TextEditingController();
  final TextEditingController _doktorAdiController = TextEditingController();
 final TextEditingController _poliklinikController = TextEditingController();
  final TextEditingController _muayeneController = TextEditingController();
  AddPersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Randevu Ekle"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                _buildHastaneAdiTextField(),
                const SizedBox(height: 16),
                _buildDoktorAdiTextField(),
                 const SizedBox(height: 16),
                   _buildPoliklinikTextField(),
                const SizedBox(height: 16),
                _buildMuayeneTextField(),
              ],
            ),
              const SizedBox(height: 40),
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
      child:Text("Randevu Ekle",style: TextStyle(color: Colors.white,),),
      style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF00D3BE),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15), 
    fixedSize: const Size(200, 50), 
  ),
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
