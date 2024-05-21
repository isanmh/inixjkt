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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.pushNamed(context, '/home');
      //     },
      //     child: const Text('Go to Home Page'),
      //   ),
      // ),

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
    );
  }
}
