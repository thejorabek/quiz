import 'package:flutter/material.dart';
import 'package:untitled/questions/junior/first.dart';
import 'package:untitled/questions/middle/first.dart';
import 'package:untitled/questions/senior/first.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

int counter = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Quiz app'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(height: 200),
          Container(
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/start.gif'))),
            width: 200,
            height: 200,
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: const Text('Choose one of them'),
                        content: SizedBox(
                          height: 150,
                          width: 100,
                          child: Column(children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const First()));
                                },
                                child: const Text('Junior')),
                            ElevatedButton(onPressed: () {
                              Navigator.pop(context);
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Firstt()));
                            }, child: const Text('Middle')),
                            ElevatedButton(onPressed: () {
                              Navigator.pop(context);
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Firsttt()));
                            }, child: const Text('Senior')),
                          ]),
                        ),
                      ));
            },
            child: const Text('Start Quiz!'),
          )
        ],
      )),
    );
  }
}
