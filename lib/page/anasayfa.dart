import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ilk/yanmenu.dart';
import '../provider/Yeni_kelime.dart';

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
      body: const AnaSayfaRandom(),
      drawer: const YanMenu(),
    );
  }
}

class AnaSayfaRandom extends StatelessWidget {
  const AnaSayfaRandom({super.key});

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
              padding: const EdgeInsets.all(11.0),
              child: Text(
                provider.current.asPascalCase,
                style: const TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Card(
            color: theme.colorScheme.primary,
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: Text(
                provider.current.asPascalCase,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
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
