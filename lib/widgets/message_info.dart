import 'package:flutter/material.dart';

class MessageInfo extends StatelessWidget {
  final String message;

  const MessageInfo({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: const TextStyle(
        fontSize: 30,
        fontFamily: 'sans-serif',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
