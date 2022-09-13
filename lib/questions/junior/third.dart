import 'package:countdown_progress_indicator/countdown_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/last_page.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _FirstState();
}

class _FirstState extends State<Third> {
  final controller = CountDownController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Junior Level'),
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
              'A Stateful widget is a ... widget',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Last()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'Static',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  counter++;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Last()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'Dynamic',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Last()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'Expanded',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Last()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'Decorated',
                )),
            const SizedBox(height: 80),
            SizedBox(
              height: 100,
              width: 100,
              child: CountDownProgressIndicator(
                initialPosition: 0,
                controller: controller,
                text: 'Sec',
                duration: 5,
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
