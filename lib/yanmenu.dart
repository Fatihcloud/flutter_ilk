import 'package:flutter/material.dart';
import 'package:son_deneme/FavoritePage.dart';

class YanMenu extends StatelessWidget {
  const YanMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.only(top: 50),
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset('assets/1.png'),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FavoritePage()),
                        );
                      },
                      label: const Text('Favorite'),
                      icon: const Icon(Icons.favorite),
                    ),
                  ),
                  ListTile(
                    title: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      label: const Text('Garbages'),
                      icon: const Icon(Icons.delete_outline),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
