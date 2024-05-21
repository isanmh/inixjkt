import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person_pin),
            onPressed: () {
              Navigator.pop(context, '/profile');
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Image.asset('assets/images/banner.png'),
        ],
      ),
    );
  }
}
