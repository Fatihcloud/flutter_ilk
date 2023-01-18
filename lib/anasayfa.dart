import 'dart:math';
import 'package:flutter/material.dart';
import 'package:son_deneme/yanmenu.dart';
import 'package:english_words/english_words.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'RANDOM İNGİLİZCE',
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
        ),
      ),
      body: const MyStatelessWidget(),
      drawer: const YanMenu(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const RandomWordGenerator(),
        ],
      ),
    );
  }
}

class RandomWordGenerator extends StatefulWidget {
  const RandomWordGenerator({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RandomWordGeneratorState createState() => _RandomWordGeneratorState();
}

class _RandomWordGeneratorState extends State<RandomWordGenerator> {
  // Random number generator
  final _random = new Random();

  // Variable to store the randomly selected word
  String _selectedWord = "";

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: <Widget>[
        Card(
          color: theme.colorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              _selectedWord,
              style: const TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              label: const Text('Like'),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {
                _selectedWord = generateWordPairs().take(1).first.asPascalCase;
                setState(() => _selectedWord);
              },
              child: const Text('Next'),
            ),
          ],
        )
      ],
    );
  }
}

