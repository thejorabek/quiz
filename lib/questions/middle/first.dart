import 'package:countdown_progress_indicator/countdown_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/questions/middle/second.dart';

class Firstt extends StatefulWidget {
  const Firstt({Key? key}) : super(key: key);

  @override
  State<Firstt> createState() => _FirstState();
}

class _FirstState extends State<Firstt> {
  Color outColor = Colors.white;
  Color textColor = Colors.blue;
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
              'Question 1',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 30),
            const Text(
              ' How many child widgets can be added to\n Container Widget?',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Secondd()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(220, 50))),
                child: const Text(
                  'Unlimited Children Widgets',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  counter++;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Secondd()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(220, 50))),
                child: const Text(
                  'Only one Child Widget',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Secondd()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(220, 50))),
                child: const Text(
                  'Two Children Widgets',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Secondd()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(220, 50))),
                child: const Text(
                  'Three Children Widgets',
                )),
            const SizedBox(height: 80),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Secondd()));
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
