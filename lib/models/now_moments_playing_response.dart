import 'dart:convert';

import 'moments.dart';

class NowMomentsPlaying {
  NowMomentsPlaying({
    required this.momentos,
  });

  List<Momento> momentos;

  factory NowMomentsPlaying.fromJson(String str) =>
      NowMomentsPlaying.fromMap(json.decode(str));

  factory NowMomentsPlaying.fromMap(Map<String, dynamic> json) =>
      NowMomentsPlaying(
        momentos:
            List<Momento>.from(json["momentos"].map((x) => Momento.fromMap(x))),
      );
}
