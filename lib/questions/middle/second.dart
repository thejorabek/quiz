import 'package:countdown_progress_indicator/countdown_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/questions/middle/third.dart';

class Secondd extends StatefulWidget {
  const Secondd({Key? key}) : super(key: key);

  @override
  State<Secondd> createState() => _FirstState();
}

class _FirstState extends State<Secondd> {
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
              'Question 2',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 30),
            const Text(
              '  This widget enables us to have a specific\n  height or width between the widgets',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Thirdd()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'AppBar',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Thirdd()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'SafeArea',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  counter++;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Thirdd()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'SizedBox',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Thirdd()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'onChanged',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Thirdd()));
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
