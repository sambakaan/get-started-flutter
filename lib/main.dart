import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int nbreWird = 32;

  void addWird() {
    nbreWird++;
    print('je suis la ');
    print(nbreWird);
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
