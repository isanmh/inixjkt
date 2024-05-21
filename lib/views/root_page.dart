// import 'package:dasar_app/views/home_page.dart';
import 'package:flutter/material.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Root Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const HomePage(),
            //   ),
            // );
          },
          child: const Text('Go to Home Page'),
        ),
      ),
    );
  }
}
