import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var untuk data
  bool isSwitch = false;
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              child: Image.asset('assets/images/banner.png'),
              onTap: () {
                print('banner');
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            Container(
              color: isCheck == true ? Colors.green : Colors.blue,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: const Text(
                'Hello World!',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            // button yang ada flutter
            ElevatedButton(
              onPressed: () {
                print('elevated');
              },
              style: ElevatedButton.styleFrom(
                // tenary
                backgroundColor: isSwitch ? Colors.red : Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text('Click Me!'),
            ),
            OutlinedButton(
              onPressed: () {
                print('OutlinedButton');
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
              ),
              child: const Text('Click Me!'),
            ),
            TextButton(
              onPressed: () {
                print('TextButton');
              },
              child: const Text('Click Me!'),
            ),
            // gesture detector
            GestureDetector(
              onTap: () {
                print('GestureDetector');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add),
                  Text('Click Me!'),
                ],
              ),
            ),
            // switch
            Switch(
              value: isSwitch,
              onChanged: (bool newValue) {
                setState(() {
                  isSwitch = newValue;
                  print('Switch: $isSwitch');
                });
              },
            ),
            Checkbox(
              value: isCheck,
              onChanged: (bool? newCheck) {
                setState(() {
                  isCheck = newCheck;
                });
              },
            ),
            const SizedBox(
              height: 200,
            ),
            Image.network('https://reqres.in/img/faces/7-image.jpg'),
          ],
        ),
      ),
    );
  }
}
