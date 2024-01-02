import 'package:flutter/material.dart';
import 'package:music_player_ex/screen/musicplayer/provider/music_provider.dart';
import 'package:provider/provider.dart';

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({super.key});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  MusicProvider? providerr;
  MusicProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<MusicProvider>();
  }

  Widget build(BuildContext context) {
    providerr = context.read<MusicProvider>();
    providerw = context.watch<MusicProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: IconButton(onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black,),),
          title: const Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text("This Song Play Your PlayList",
                  style: TextStyle(color: Colors.black, fontSize: 15),),
                Text("My PlayList", style: TextStyle(color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          actions: [
            IconButton(onPressed: () {},
                icon: const Icon(Icons.more_vert, color: Colors.black,))
          ],
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [

              // Slider(value: 10, onChanged: (){
              //   return const Text("data");
              // }),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.play_arrow,color: Colors.white,),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
