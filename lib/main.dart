import 'package:flutter/material.dart';
import 'package:son_deneme/anasayfa.dart';

void main() => runApp(AnaGiris());

class AnaGiris extends StatelessWidget {
  get favorites => null;

  get garbages => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: AnaSayfa(),
      routes: rotalar,
      debugShowCheckedModeBanner: false,
    );
  }
}

var rotalar = <String, WidgetBuilder>{
  "/anasayfa": (BuildContext context) => AnaSayfa(),
};
