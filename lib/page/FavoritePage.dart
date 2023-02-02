// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_ilk/provider/Yeni_kelime.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyAppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
      ),
      body: Column(
        children: [
          Text('You have '
              '${provider.favorites.length} favorites:'),
          Expanded(
            child: ListView.builder(
              itemCount: provider.favorites.length,
              itemBuilder: (favorite, index) {
                return ListTile(
                  title: Text(provider.favorites[index].asPascalCase),
                  leading: const Icon(Icons.favorite),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete_outline),
                    onPressed: () {
                      setState(() {
                        provider.garbages.add(provider.favorites[index]);
                        provider.favorites.removeAt(index);
                      },
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
