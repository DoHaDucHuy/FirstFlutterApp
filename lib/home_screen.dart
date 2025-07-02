import 'package:flutter/material.dart';
import 'settings_screen.dart';
import 'info_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  void onDrawerItemTap(int index) {
    setState(() {
      selectedIndex = index;
      Navigator.pop(context); // Đóng Drawer sau khi chọn
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      Center(child: Text("Welcome to Home Screen")),
      SettingsScreen(
        onTabChange: (int idx) {
          setState(() {
            selectedIndex = idx;
          });
        },
      ),
      InfoScreen(),
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Drawer Navigation App")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () => onDrawerItemTap(0),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () => onDrawerItemTap(1),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Info"),
              onTap: () => onDrawerItemTap(2),
            ),
          ],
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}
