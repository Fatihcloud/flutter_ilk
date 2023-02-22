import 'package:flutter/material.dart';
import 'package:flutter_ilk/Page_login/giris_oldumu.dart';
import 'package:flutter_ilk/provider/Yeni_kelime.dart';
import 'package:provider/provider.dart';
import 'page/anasayfa.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const AnaGiris());
}

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
        home: const GirisOldumu(),
        routes: rotalar,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

var rotalar = <String, WidgetBuilder>{
  "/anasayfa": (BuildContext context) => const AnaSayfa(),
};
