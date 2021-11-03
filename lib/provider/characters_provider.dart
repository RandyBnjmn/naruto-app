import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:naruto_shippuden_app/models/models.dart';

class CharactersProvider extends ChangeNotifier {
  List<Personaje> onCharactersDisplay = [];
  List<Momento> onMomentsDisplay = [];

  CharactersProvider() {
    this.getOnDisplayCharacters();
  }

  getOnDisplayCharacters() async {
    final response = await rootBundle.loadString('data/characters.json');
    final nowPlayingResponse = NowPlayingResponse.fromJson(response);
    onCharactersDisplay = nowPlayingResponse.personajes;

    notifyListeners();
  }
}
