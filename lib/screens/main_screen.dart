import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'look_around_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          // HomeScreen(),
          LookAroundScreen(),
          // RepositoryScreen(),
        ],
      ),
      appBar: AppBar(
        title: Text("Music", style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
        backgroundColor: Colors.black,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   showUnselectedLabels: true,
      //   showSelectedLabels: true,
      //   currentIndex: _selectedIndex,
      //   unselectedItemColor: Colors.white,
      //   selectedItemColor: Colors.white,
      //   onTap: (index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      //   items: [
      //     // BottomNavigationBarItem(icon: )
      //   ],
      // ),
    );
  }
}
