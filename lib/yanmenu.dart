import 'package:flutter/material.dart';
import 'package:flutter_ilk/page/History.dart';
import 'page/FavoritePage.dart';
import 'page/Garbage_Page.dart';

class YanMenu extends StatelessWidget {
  const YanMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple[300],
      width: MediaQuery.of(context).size.width * 0.5,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
              child: Center(
            child: Text(
              'L O G O',
              style: TextStyle(fontSize: 35),
            ),
          )),
          ListTile(
            title: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FavoritePage()),
                );
              },
              label: const Text('Favorite'),
              icon: const Icon(Icons.favorite),
            ),
          ),
          ListTile(
            title: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GarbagePage()),
                );
              },
              label: const Text('Garbages'),
              icon: const Icon(Icons.delete_outline),
            ),
          ),
          ListTile(
            title: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const History()),
                );
              },
              label: const Text('History'),
              icon: const Icon(Icons.history),
            ),
          ),
        ],
      ),
    );
  }
}
