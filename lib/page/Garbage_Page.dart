import 'package:flutter/material.dart';

class GarbagePage extends StatefulWidget {
  const GarbagePage({super.key});

  @override
  State<GarbagePage> createState() => _GarbagePageState();
}

class _GarbagePageState extends State<GarbagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garbage'),
      ),
    );
  }
}