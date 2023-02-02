import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    history.add(current);
    notifyListeners();
  }

  var favorites = <WordPair>[];
  var garbages = <WordPair>[];
  var history = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
      print('baba');
    } else {
      favorites.add(current);
      print('anne');
    }
    notifyListeners();
  }
}
