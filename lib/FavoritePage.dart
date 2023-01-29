import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'anasayfa.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyAppState>(
      create: (context) => MyAppState(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Favorite'),
        ),
        body: const FavoriListesi(),
      ),
    );
  }
}

class FavoriListesi extends StatefulWidget {
  const FavoriListesi({super.key});

  @override
  State<FavoriListesi> createState() => _FavoriListesiState();
}

class _FavoriListesiState extends State<FavoriListesi> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return Column(
      children: [
        Text('You have '
            '${appState.favorites.length} favorites:'),
        Expanded(
          child: ListView.builder(
            itemCount: appState.favorites.length,
            itemBuilder: (favorite, index) {

              return ListTile(
                title: Text("${appState.favorites[index]}"),
                leading: const Icon(Icons.favorite),
                trailing: IconButton(
                  icon: const Icon(Icons.delete_outline),
                  onPressed: () {
                    setState(() {
                      appState.garbages.add(appState.favorites[index]);
                      appState.favorites.removeAt(index);
                    });
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
