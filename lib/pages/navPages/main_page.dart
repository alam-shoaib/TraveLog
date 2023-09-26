import 'package:flutter/material.dart';
import 'package:trave_log/main.dart';
import 'package:trave_log/pages/Home_Page.dart';
import 'package:trave_log/pages/navPages/bar_page.dart';
import 'package:trave_log/pages/navPages/my_page.dart';
import 'package:trave_log/pages/navPages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages=[HomePage(),
    BarPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex=0;
  void onTap(int idx){
    setState(() {
      currentIndex=idx;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black54,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        items: [
          BottomNavigationBarItem(label:"Home",icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label:"Bar",icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label:"Search",icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:"My",icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}