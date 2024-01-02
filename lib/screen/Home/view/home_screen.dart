import 'package:flutter/material.dart';
import 'package:music_player_ex/screen/Home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerr;
  HomeProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<HomeProvider>();
  }
  Widget build(BuildContext context) {
    providerr = context.read<HomeProvider>();
    providerw = context.read<HomeProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Music Player",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ))
          ],
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: ListView.builder(
              itemCount: providerw!.dataList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${providerw!.dataList[index].song}"),
                  leading: Text("${providerw!.dataList[index].dataModel!.image}"),
                  trailing: IconButton(onPressed: (){
                    Navigator.pushNamed(context, 'music', );
                  },icon: const Icon(Icons.arrow_forward_ios),),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
