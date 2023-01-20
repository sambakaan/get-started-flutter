import 'package:flutter/material.dart';
import 'package:test_flutter_app/widgets/message_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int nbreWird = 0;
  int wirdIndex = 0;
  List<String> wirds = const [
    'subhanallah',
    'walhamdulillah',
    'wala ilha illalah',
    'wallahu akbar',
    'la illaha illalah',
  ];

  void addWird() {
    setState(() {
      nbreWird++;
      if (nbreWird > 33 && nbreWird < 66) {
        wirdIndex = 1;
      } else if (nbreWird > 66 && nbreWird < 99) {
        wirdIndex = 2;
      } else if (nbreWird > 99 && nbreWird < 132) {
        wirdIndex = 3;
      } else if (nbreWird > 132) {
        wirdIndex = 1;
      }
    });
  }

  void resetWird() {
    setState(() {
      wirdIndex = 0;
      nbreWird = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simplon SIMEN'),
        actions: [
          IconButton(onPressed: resetWird, icon: const Icon(Icons.restore))
        ],
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/zikrrr-logo.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  MessageInfo(message: wirds.elementAt(wirdIndex)),
                  const SizedBox(
                    height: 20,
                  ),
                  MessageInfo(message: nbreWird.toString()),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addWird,
        tooltip: 'Tasbih',
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
