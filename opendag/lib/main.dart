import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Open dag school';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MyStatelessWidget(),
            const MyStatelessWidget2(),
          ],
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          width: 250,
          height: 250,
          child: Text('Game Development'),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 247, 15, 15),
            image: DecorationImage(
              image: AssetImage("assets/img/gamedev.png"),
              fit: BoxFit.contain,
              // alignment: Alignment.topCenter,
            ),
          ),
        ),
      ),
    );
  }
}

class MyStatelessWidget2 extends StatelessWidget {
  const MyStatelessWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          width: 250,
          height: 250,
          child: Text('Software Development'),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 233, 22, 22),
            image: DecorationImage(
              image: AssetImage("assets/img/Webdev.png"),
              fit: BoxFit.contain,
              // alignment: Alignment.topCenter,
            ),
          ),
        ),
      ),
    );
  }
}
