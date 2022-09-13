import 'package:countdown_progress_indicator/countdown_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/last_page.dart';

class Thirdd extends StatefulWidget {
  const Thirdd({Key? key}) : super(key: key);

  @override
  State<Thirdd> createState() => _FirstState();
}

class _FirstState extends State<Thirdd> {
  final controller = CountDownController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Middle Level'),
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
              '  Which of the following properties must we\n  utilize for adding the label, inline, and icon\n  suggestion text to the TextField widget?',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
                onPressed: () {
                  counter++;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Last()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'InputDecoration',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Last()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'ListView',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Last()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'SizeBox',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Last()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'shrinkWrap:true',
                )),
            const SizedBox(height: 60),
            SizedBox(
              height: 100,
              width: 100,
              child: CountDownProgressIndicator(
                initialPosition: 0,
                controller: controller,
                text: 'Sec',
                duration: 10,
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
