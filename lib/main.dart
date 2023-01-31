import 'package:flutter/material.dart';
import 'package:flutter_ilk/provider/Yeni_kelime.dart';
import 'package:provider/provider.dart';
import 'page/anasayfa.dart';

void main() => runApp(const AnaGiris());

class AnaGiris extends StatelessWidget {
  const AnaGiris({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const AnaSayfa(),
        routes: rotalar,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

var rotalar = <String, WidgetBuilder>{
  "/anasayfa": (BuildContext context) => const AnaSayfa(),
};
