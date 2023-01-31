import 'package:flutter/material.dart';
import 'package:flutter_ilk/provider/Yeni_kelime.dart';
import 'package:provider/provider.dart';

class GarbagePage extends StatefulWidget {
  const GarbagePage({super.key});

  @override
  State<GarbagePage> createState() => _GarbagePageState();
}

class _GarbagePageState extends State<GarbagePage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyAppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garbage'),
      ),
      body: Column(
        children: [
          Text('You have '
              '${provider.garbages.length} Garbages:'),
          Expanded(
            child: ListView.builder(
              itemCount: provider.garbages.length,
              itemBuilder: (favorite, index) {
                return ListTile(
                  title: Text(provider.garbages[index].asPascalCase),
                  leading: const Icon(Icons.heart_broken),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete_outline),
                    onPressed: () {
                      setState(() {
                        provider.garbages.removeAt(index);
                      });
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
