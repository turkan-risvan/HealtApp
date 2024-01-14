import 'package:flutter/material.dart';
import 'package:healt_app/viewmodel/main_viewmodel.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    MainViewModel viewModel = Provider.of<MainViewModel>(
      context,
      listen: false,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Karakterler"),
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          viewModel.openAddCharacterPage(context);
        },
      ),
    );
  }

  Widget _buildBody() {
    return Consumer<MainViewModel>(
      builder: (context, viewModel, child) => ListView.builder(
        itemCount: viewModel.characters.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
       color: Color.fromARGB(255, 10, 255, 226),
      margin: EdgeInsets.all(16),
    
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.local_hospital),
                    SizedBox(width: 8),
                    Text(viewModel.characters[index].hastaneAdi),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    // Kartı silme işlemi
                  },
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.local_hospital),
                SizedBox(width: 8),
                Text(viewModel.characters[index].doktorAdi),
              ],
            ),
            Row(
              children: [
                Icon(Icons.info),
                SizedBox(width: 8),
                Text(viewModel.characters[index].poliklinik),
              ],
            ),
            Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 8),
                Text(viewModel.characters[index].muayene),
              ],
            ),
            Row(
              children: [
                Icon(Icons.calendar_today),
                SizedBox(width: 8),
                Text(
                  'Talep Geçerlilik Tarihi',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.access_time),
                SizedBox(width: 8),
                Text('Saat ve Tarih Bilgisi'),
              ],
            ),
          ],
        ),
      ),
    );
        },
      ),
    );
  }
  
 

}
