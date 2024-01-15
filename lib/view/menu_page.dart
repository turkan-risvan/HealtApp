import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: ListView(
        children: [
      
         const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFF00D3BE),
                  child: Text(
                    'TR',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                 Text(
                        'TÜRKAN RİŞVAN',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),   ],
            ),
          ),
          const Divider(),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              buildMenuCard(Icons.access_alarm, 'Çevre Hastane'),
              buildMenuCard(Icons.add_alert, 'Favoriler'),
              buildMenuCard(Icons.mail, 'Hekimler'),
              buildMenuCard(Icons.settings, 'Yetkili Olduklarım'),
               buildMenuCard(Icons.access_alarm, 'Ayarlar'),
              buildMenuCard(Icons.add_alert, 'Profil'),
              buildMenuCard(Icons.mail, 'Hakkında'),
              buildMenuCard(Icons.settings, 'Aydınlatma Metni'),
               buildMenuCard(Icons.access_alarm, 'NeyimVar?'),
              buildMenuCard(Icons.add_alert, 'Çıkış Yap'),
            
            
            ],
          ),
        ],
      ),
    );
  }

  Widget buildMenuCard(IconData icon, String title) {
    return GestureDetector(
      
      child: Card(
      color:const Color(0xFF00D3BE),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
           
            children: [
              Icon(icon),
              const SizedBox(width: 8),
              Text(
                title,
                style:const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 