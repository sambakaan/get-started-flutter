import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nbreWird = 17;

  void addWird() {
    setState(() {
      nbreWird++;
      print('je suis la ');
      print(nbreWird);
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simplon SIMEN'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Bienvenu dans la formation flutter'),
              Text('$nbreWird'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: addWird,
          tooltip: 'Incrementer',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
