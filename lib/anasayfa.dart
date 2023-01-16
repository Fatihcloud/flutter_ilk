import 'package:flutter/material.dart';
import 'package:son_deneme/yanmenu.dart';

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
            title: Text(
          'Random İngilizce',
          style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
        )),
        body: Container(),
        drawer: YanMenu(),
        backgroundColor: Colors.white);
  }
}
