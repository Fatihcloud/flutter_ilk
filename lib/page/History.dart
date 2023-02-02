import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ilk/provider/Yeni_kelime.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyAppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
      ),
      body: Column(
        children: [
          Text('You have '
              '${provider.history.length} History:'),
          Expanded(
            child: ListView.builder(
              itemCount: provider.history.length,
              itemBuilder: (history, index) {
                return ListTile(
                  title: Text(provider.history[index].asPascalCase),
                  leading: const Icon(Icons.history),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              provider.favorites.add(provider.history[index]);
                            });
                          },
                          icon: const Icon(Icons.favorite)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              provider.garbages.add(provider.history[index]);
                            });
                          },
                          icon: const Icon(Icons.delete)),
                    ],
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
