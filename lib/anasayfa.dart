import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ilk/yanmenu.dart';
import 'provider/Yeni_kelime.dart';

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
      body: const RandomWordGenerator(),
      drawer: const YanMenu(),
    );
  }
}

class RandomWordGenerator extends StatefulWidget {
  const RandomWordGenerator({super.key});
  @override
  _RandomWordGeneratorState createState() => _RandomWordGeneratorState();
}

class _RandomWordGeneratorState extends State<RandomWordGenerator> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final provider = Provider.of<MyAppState>(context);

    IconData icon;
    if (provider.favorites.contains(provider.current)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            color: theme.colorScheme.primary,
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(provider.current.asString)),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  provider.toggleFavorite();
                },
                icon: Icon(icon),
                label: const Text('Like'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  provider.getNext();
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
