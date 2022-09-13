import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';

class Last extends StatefulWidget {
  const Last({Key? key}) : super(key: key);

  @override
  State<Last> createState() => _LastState();
}

class _LastState extends State<Last> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Result'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(height: 50),
          Container(
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/analyze.gif'), fit: BoxFit.cover)),
            width: 300,
            height: 300,
          ),
          const SizedBox(height: 100),
          const Text(
            'Your result',
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(height: 30),
          Text(
            '$counter/3',
            style: const TextStyle(fontSize: 25),
          ),
          const SizedBox(height: 35),
          ElevatedButton(
              onPressed: () {
                counter = 0;
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Text('Home'))
        ],
      )),
    );
  }
}
