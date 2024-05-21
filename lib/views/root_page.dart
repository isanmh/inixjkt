// import 'package:dasar_app/views/home_page.dart';
import 'package:dasar_app/views/home_page.dart';
import 'package:dasar_app/views/profile_page.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // var untuk bottom navigation bar
  int currentPage = 0;

  // widget untuk bottom navigation bar
  List<Widget> pages = [
    ProfilePage(),
    HomePage(),
    // Text('Page 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.people_alt),
            label: 'Profile',
          ),
        ],
        onDestinationSelected: (int index) {
          print('ini $index');
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/items');
        },
        child: const Icon(Icons.qr_code_scanner),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
