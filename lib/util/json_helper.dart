import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:music_player_ex/screen/Home/model/home_model.dart';

class JsonHelper{

  Future<List<SongModel>> songJsonToList() async {
    var jsonToString = await rootBundle.load("assets/json/music.json");
    List songData = jsonDecode(jsonToString as String);
    List<SongModel> songList = songData.map((e) => SongModel.mapToModel).cast<SongModel>().toList();
    return songList;
  }

  Future<List<DataModel>> datajsonToList() async {
    var jsonToString = await rootBundle.load("assets/json/music.json");
    List songData = jsonDecode(jsonToString as String);
    List<DataModel> dataList = songData.map((e) => DataModel.mapToModel).cast<DataModel>().toList();
    return dataList;
  }
}