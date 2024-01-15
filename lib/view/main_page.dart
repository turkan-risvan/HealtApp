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
        title: const Text("Randevular"),
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
       backgroundColor: const Color(0xFF00D3BE),
        child: const Icon(Icons.add,color: Colors.white,),
        onPressed: () {
          viewModel.openAddPersonPage(context);
        },
      ),
    );
  }

  Widget _buildBody() {
    return Consumer<MainViewModel>(
      builder: (context, viewModel, child) => ListView.builder(
        itemCount: viewModel.persons.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
       color: const Color(0xFF00D3BE),
      margin: const EdgeInsets.all(16),
    
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
                    const Icon(Icons.local_hospital),
                    const SizedBox(width: 8),
                    Text(viewModel.persons[index].hastaneAdi),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                 
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.local_hospital),
                const SizedBox(width: 8),
                Text(viewModel.persons[index].doktorAdi),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.info),
                const SizedBox(width: 8),
                Text(viewModel.persons[index].poliklinik),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.person),
                const SizedBox(width: 8),
                Text(viewModel.persons[index].muayene),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.calendar_today),
                SizedBox(width: 8),
                Text(
                  'Talep Geçerlilik Tarihi',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            const Row(
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
