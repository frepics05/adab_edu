import 'package:adab_edu/screens/menus/adab_belajar.dart';
import 'package:adab_edu/screens/menus/adab_makan.dart';
import 'package:adab_edu/screens/menus/adab_sesama.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _lastselected = 0;
  final List<Widget> menu = <Widget>[
    AdabSesama(),
    AdabBelajar(),
    AdabMakan()
  ];

  void _selectedTab(int index) {
    setState(() {
      _lastselected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: menu.elementAt(_lastselected),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _lastselected,
        type: BottomNavigationBarType.fixed,
        onTap: _selectedTab,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text("Sesama Muslim")),
          BottomNavigationBarItem(icon: Icon(Icons.book), title: Text("Menuntut Ilmu")),
          BottomNavigationBarItem(icon: Icon(Icons.fastfood), title: Text("Ketika Makan")),
        ],
      ),
    );
  }
}
