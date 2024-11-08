import 'package:flutter/material.dart';

import '../controller/song_controller.dart';

// class View UI = he is responsible to show data to user "UI Mobile"
class SongScreen extends StatefulWidget {
  const SongScreen({super.key});

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('MCV Pattern'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(SongController.loading ? 'Loading' : SongController.getSongInfo().name,),
            Text(SongController.loading ? 'Loading' : SongController.getSongInfo().des,),
            Text(SongController.loading ? 'Loading' : SongController.getSongInfo().artist,),
            ElevatedButton(onPressed: (){
              setState(() {
                SongController.loading =! SongController.loading;
              });
            }, child: const Text('get data'))
          ],
        ),
      ),
    );
  }
}
