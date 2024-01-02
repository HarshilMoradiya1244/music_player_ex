import 'package:flutter/material.dart';
import 'package:music_player_ex/screen/Home/provider/home_provider.dart';
import 'package:music_player_ex/screen/musicplayer/provider/music_provider.dart';
import 'package:music_player_ex/screen/musicplayer/view/music_screen.dart';
import 'package:music_player_ex/util/app_routes.dart';
import 'package:provider/provider.dart';

void main(){

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context) => HomeProvider(),),
        ChangeNotifierProvider(create:(context) => MusicProvider(),)
      ],
      child: MaterialApp(
        initialRoute: 'music',
        debugShowCheckedModeBanner: false,
        routes:screen_routes ,
      ),
    )
  );
}