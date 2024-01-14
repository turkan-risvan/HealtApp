import 'package:flutter/material.dart';
import 'package:healt_app/view/main_page.dart';

class RandevuTaleplerimScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Randevu Taleplerim'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
     
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Taleplerin geçerlilik süresi 20 gündür.',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  'Talep geçerlilik süresinin bitmesine 5 gün kala talebinizi ilan edebilirsiniz.',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  'İlan edemeyen talepler talep geçerlilik süresi dolduğunda geçerliliğini yitirecektir.',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),

 
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Kart sayısı
              itemBuilder: (context, index) {
                return buildTalepKarti();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTalepKarti() {
    return Card(
       color: Color.fromARGB(255, 10, 255, 226),
      margin: EdgeInsets.all(16),
      elevation: 2,
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
                    Text('Hastane Adı'),
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
                Text('Poliklinik Bilgisi'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.info),
                SizedBox(width: 8),
                Text('Bilgi Ver'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 8),
                Text('Doktor İsmi'),
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
  }

}

 
