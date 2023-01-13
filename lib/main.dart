import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simplon SIMEN'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Bienvenu dans la formation flutter'),
              Text('12'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          tooltip: 'Incrementer',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
