import 'package:flutter/material.dart';
import 'package:music_player_ex/screen/Home/model/home_model.dart';
import '../../../util/json_helper.dart';

class MusicProvider with ChangeNotifier {

  List<DataModel> dataList = [];
  int infoindex=0;

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<DataModel> Data = await jsonHelper.datajsonToList();
    dataList = Data;
    notifyListeners();
  }

  void indexStatus(int index){
    infoindex = index;
  }


}
