import 'dart:convert';

import 'models.dart';

class NowPlayingResponse {
  NowPlayingResponse({
    required this.personajes,
  });

  List<Personaje> personajes;

  factory NowPlayingResponse.fromJson(String str) =>
      NowPlayingResponse.fromMap(json.decode(str));

  factory NowPlayingResponse.fromMap(Map<String, dynamic> json) =>
      NowPlayingResponse(
        personajes: List<Personaje>.from(
            json["personajes"].map((x) => Personaje.fromMap(x))),
      );
}
