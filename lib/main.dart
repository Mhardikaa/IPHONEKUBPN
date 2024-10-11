import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/favorites.dart';
import 'pages/profile.dart';
import 'widgets/bottom_bar.dart';

void main() {
  runApp(AppleMarketplaceApp());
}

class AppleMarketplaceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apple Marketplace',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    FavoritePage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 145, 132, 132),
        title: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/iphonekubpn_logo.png',
                height: 50,
                width: 50,
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Apple Marketplace',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 201, 198, 198),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
