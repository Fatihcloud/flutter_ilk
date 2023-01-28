import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
    return ChangeNotifierProvider<MyAppState>(
      create: (context) => MyAppState(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'RANDOM İNGİLİZCE',
            style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
          ),
        ),
        body: const RandomWordGenerator(),
        drawer: const YanMenu(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  var favorites = <WordPair>[];
  var garbages = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}

class RandomWordGenerator extends StatefulWidget {
  const RandomWordGenerator({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _RandomWordGeneratorState createState() => _RandomWordGeneratorState();
}

class _RandomWordGeneratorState extends State<RandomWordGenerator> {

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            color: theme.colorScheme.primary,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                appState.current.asString,
                style: const TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite();
                },
                icon: const Icon(Icons.favorite),
                label: const Text('Like'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: const Text('Next'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
