import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';
import 'package:music_notes_player_app_setup/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.redAccent, sound: 'note1.wav'),
    TuneModel(color: Color(0xffcbb68f), sound: 'note2.wav'),
    TuneModel(color: Color(0xff625e1c), sound: 'note3.wav'),
    TuneModel(color: Colors.yellow, sound: 'note4.wav'),
    TuneModel(color: Color(0xff2F9688), sound: 'note5.wav'),
    TuneModel(color: Color(0xff184ca4), sound: 'note6.wav'),
    TuneModel(color: Colors.blue, sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Music Tune',
        style: TextStyle(color: Colors.white,
        letterSpacing: 5),),
        backgroundColor: const Color(0xff253238),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItem(tune: e),
            )
            .toList(),
      ),
    );
  }

}
