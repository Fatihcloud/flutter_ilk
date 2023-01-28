import 'package:flutter/material.dart';
import 'package:son_deneme/anasayfa.dart';

void main() => runApp(const AnaGiris());

class AnaGiris extends StatelessWidget {
  const AnaGiris({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const AnaSayfa(),
      routes: rotalar,
      debugShowCheckedModeBanner: false,
    );
  }
}

var rotalar = <String, WidgetBuilder>{
  "/anasayfa": (BuildContext context) => const AnaSayfa(),
};
