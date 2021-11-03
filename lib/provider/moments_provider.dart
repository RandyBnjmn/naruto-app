import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:naruto_shippuden_app/models/moments.dart';
import 'package:naruto_shippuden_app/models/now_moments_playing_response.dart';

class MomentsProvider extends ChangeNotifier {
  MomentsProvider() {
    getOnDisplayMoments();
  }

  List<Momento> onMomentsDisplay = [];

  getOnDisplayMoments() async {
    // print('getOnDisplayCharacter');
    final response = await rootBundle.loadString('data/moments.json');
    final nowMomentsPlayingResponse = NowMomentsPlaying.fromJson(response);
    onMomentsDisplay = nowMomentsPlayingResponse.momentos;
    print(onMomentsDisplay[0].momento);

    notifyListeners();
  }
}
