import 'package:countdown_progress_indicator/countdown_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/last_page.dart';

class Thirddd extends StatefulWidget {
  const Thirddd({Key? key}) : super(key: key);

  @override
  State<Thirddd> createState() => _FirstState();
}

class _FirstState extends State<Thirddd> {
  final controller = CountDownController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Senior Level'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(children: [
            const Text(
              'Question 3',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 30),
            const Text(
              '  Name two database packages mostly\n  used in Flutter',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Last()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'MySQL and Oracle',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Last()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'SQFlite and MongoDB',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Last()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'Firebase and PostgreSQL',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  counter++;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Last()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'Firebase and SQFlite',
                )),
            const SizedBox(height: 80),
            SizedBox(
              height: 100,
              width: 100,
              child: CountDownProgressIndicator(
                initialPosition: 0,
                controller: controller,
                text: 'Sec',
                duration: 15,
                backgroundColor: Colors.blue,
                valueColor: Colors.white,
                onComplete: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Last()));
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
