import 'package:flutter/material.dart';

class RandevularimScreen extends StatefulWidget {
  @override
  _RandevularimScreenState createState() => _RandevularimScreenState();
}

class _RandevularimScreenState extends State<RandevularimScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Randevularım'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'Randevular'),
              Tab(text: 'Geçmiş Randevular'),
              Tab(text: 'Gizli Randevular'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                  Column(
                    children: [
                      SizedBox(height: 16),
                                buildRandevuCard(
                                  '12 Ocak 2024',
                                  Icons.access_time,
                                  '14:30',
                                  'Hastane İsmi',
                                  Icons.person,
                                  'Dr. Doktor İsmi',
                                  Icons.local_hospital,
                                  'Pozisyon',
                                  Icons.healing,
                                  'Hekimlik',
                                  'Muayene',
                                  
                                ),
                              
                    ],
                  ),
                   Column(
                    children: [
                      SizedBox(height: 16),
                                buildRandevuCard(
                                  '12 Ocak 2024',
                                  Icons.access_time,
                                  '14:30',
                                  'Hastane İsmi',
                                  Icons.person,
                                  'Dr. Doktor İsmi',
                                  Icons.local_hospital,
                                  'Pozisyon',
                                  Icons.healing,
                                  'Hekimlik',
                                  'Muayene',
                                ),
                               
                    ],
                  ),
                   Column(
                    children: [
                      SizedBox(height: 16),
                                buildRandevuCard(
                                  '12 Ocak 2024',
                                  Icons.access_time,
                                  '14:30',
                                  'Hastane İsmi',
                                  Icons.person,
                                  'Dr. Doktor İsmi',
                                  Icons.local_hospital,
                                  'Pozisyon',
                                  Icons.healing,
                                  'Hekimlik',
                                  'Muayene',
                                ),
                               
                    ],
                  ),
       
              ],
            ),
          ),
        ],
      ),
    );
  }

 
  Widget buildKart(String title) {
    return Card(
       color: Color.fromARGB(255, 10, 255, 226),
      elevation: 2,
      margin: EdgeInsets.all(16),
      child: SizedBox(
        width: 120,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              // Diğer içerikler buraya eklenir
            ],
          ),
        ),
      ),
    );
  }  Widget buildRandevuCard(
    String date,
    IconData timeIcon,
    String time,
    String hospital,
    IconData doctorIcon,
    String doctor,
    IconData positionIcon,
    String position,
    IconData departmentIcon,
    String department,
    String type,
  ) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(date),
                SizedBox(width: 8),
                Icon(timeIcon),
                Text(time),
              ],
            ),
            SizedBox(height: 8),
            Text(hospital),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(doctorIcon),
                Text(doctor),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(positionIcon),
                Text(position),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(departmentIcon),
                Text(department),
              ],
            ),
            SizedBox(height: 8),
            Text(type),

              SizedBox(height: 16),

              Row(children: [
 buildKart('Aynı Hekimden Randevular'),
                                    buildKart('Gizli Randevular'),
              ],),
                             
          ],
        ),
      ),
    );
  }

  // Widget buildKart(String title) {
  //   return Card(
  //     elevation: 2,
  //     margin: EdgeInsets.all(16),
  //     child: Padding(
  //       padding: const EdgeInsets.all(16.0),
  //       child: Column(
  //         children: [
  //           Text(
  //             title,
  //             style: TextStyle(
  //               fontWeight: FontWeight.bold,
  //               fontSize: 18,
  //             ),
  //           ),
  //           // Diğer içerikler buraya eklenir
  //         ],
  //       ),
  //     ),
  //   );
  // }


}

 
