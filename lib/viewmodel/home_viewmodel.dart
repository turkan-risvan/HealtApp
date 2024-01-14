import 'package:flutter/material.dart';

import 'package:healt_app/view/home_detay_page.dart';
import 'package:healt_app/view/home_page.dart';

import 'package:healt_app/view/main_page.dart';
import 'package:healt_app/view/menu_page.dart';

import 'package:healt_app/view/randevularim_page.dart';

class HomeScreenProvider with ChangeNotifier {
  int _currentIndex = 0;
  List<Widget> _pages = [
    HomeScreenDetay(),

   RandevularimScreen(),
      MainPage(),
   // RandevuTaleplerimScreen(),
    MenuScreen(),
  ];

  int get currentIndex => _currentIndex;

  Widget get currentPage => _pages[_currentIndex];

  void changePage(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}