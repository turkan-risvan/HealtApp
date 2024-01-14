import 'package:flutter/material.dart';

class HomeScreenDetay extends StatefulWidget {
  @override
  _HomeScreenDetayState createState() => _HomeScreenDetayState();
}

class _HomeScreenDetayState extends State<HomeScreenDetay> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Merhaba Türkan',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: CustomSearchDelegate(),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.apps),
                  onPressed: () {
                    // Uygulama ikonuna tıklanınca yapılacak işlemler
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Icon(Icons.assignment),
                title: Text('Aşı Randevusu'),
                onTap: () {
                  // Aşı randevusu için tıklama işlemleri
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Aile Hekiminden Randevu Al'),
                onTap: () {
                  // Aile hekiminden randevu al için tıklama işlemleri
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.local_hospital),
                title: Text('Hastaneden Randevu Al'),
                onTap: () {
                  // Hastaneden randevu al için tıklama işlemleri
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Yaklaşan Randevularım',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
      ),
    );
  }
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

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchResults = []; // Buraya taşıdık

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSearchResults();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildSearchResults();
  }

  Widget buildSearchResults() {
    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(searchResults[index]),
          onTap: () {
            // Seçilen öğe için tıklama işlemleri
          },
        );
      },
    );
  }
}
