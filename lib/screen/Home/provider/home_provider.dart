import 'package:flutter/cupertino.dart';
import 'package:music_player_ex/screen/Home/model/home_model.dart';
import 'package:music_player_ex/util/json_helper.dart';

class HomeProvider with ChangeNotifier {

  List<SongModel> dataList = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<SongModel> song = await jsonHelper.songJsonToList();
    dataList = song;
    notifyListeners();
  }

}
