import 'package:flutter/material.dart';

int index = 20;

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: ListView.builder(
        itemCount: index,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
            leading: Icon(Icons.people_alt),
          );
        },
      ),
    );
  }
}
