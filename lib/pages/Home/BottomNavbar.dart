import 'package:flutter/material.dart';
import 'package:ComCon/pages/Home/DashBoard.dart';
import 'package:ComCon/pages/Home/cabDashBoard.dart';
import 'package:ComCon/constant.dart';
import 'package:ComCon/pages/Home/PoolForm.dart';
import 'package:ComCon/pages/Home/CabForm.dart';



class BottomNavPage extends StatefulWidget {
  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  final List _pages = [
    Home(),
    FormScreen(),
    HomeCab(),
    CabFormScreen(),
  ];
  int _currentIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: kOrangeColor,       
        elevation: 0.0,
        items: [Icons.home, Icons.insert_chart, Icons.event_note, Icons.person]
            .asMap()
            .map((key, value) => MapEntry(
                  key,
                  BottomNavigationBarItem(
                    title: Text(''),
                    icon: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                        color: _currentIndex == key
                            ? kOrangeColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Icon(value),
                    ),
                  ),
                ))
            .values
            .toList(),
      ),
    );
  }
}