import 'package:countdown_progress_indicator/countdown_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/questions/senior/third.dart';

class Seconddd extends StatefulWidget {
  const Seconddd({Key? key}) : super(key: key);

  @override
  State<Seconddd> createState() => _FirstState();
}

class _FirstState extends State<Seconddd> {
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
              'Question 2',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 30),
            const Text(
              'Explain packages and plugins in Flutter',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Thirddd()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 70))),
                child: const Text(
                  'Plugins: Using native code, enables more usability and makes it easier to use the device',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Thirddd()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 70))),
                child: const Text(
                  'Packages:  These are new code or components written in the dart programming language',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  counter++;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Thirddd()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'Both of them true answers',
                )),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Thirddd()));
                },
                style: ButtonStyle(fixedSize: MaterialStateProperty.all(const Size(200, 50))),
                child: const Text(
                  'There\'s no true answers',
                )),
            const SizedBox(height: 60),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Thirddd()));
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
