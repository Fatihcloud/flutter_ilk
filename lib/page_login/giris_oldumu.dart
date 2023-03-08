import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ilk/page/anasayfa.dart';
import 'package:flutter_ilk/page_login/auth_page.dart';

class GirisOldumu extends StatelessWidget {
  const GirisOldumu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const AnaSayfa();
          } else {
            return const AuthPage();
          }
        },
      ),
    );
  }
}
