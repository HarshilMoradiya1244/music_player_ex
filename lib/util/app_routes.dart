import 'package:flutter/cupertino.dart';
import 'package:music_player_ex/screen/Home/view/home_screen.dart';
import 'package:music_player_ex/screen/musicplayer/view/music_screen.dart';

Map<String,WidgetBuilder> screen_routes = {
  '/':(context) => const HomeScreen(),
  'music':(context) => const MusicPlayerScreen(),
};