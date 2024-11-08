import 'package:mcv_pattern/model/song_model.dart';
// this class controller to magic control data from api or manuel

class SongController {
  static bool loading = true;

  static SongModel getSongInfo() {
    // get data from user manuel
    //return SongModel(name: 'name', des: 'des', artist: 'artist');
    //get data from API
    return SongModel.fromJson({
      'name':'sa3f elrap',
      'des':'agmad rap i liented',
      'artist':'r3',
    });
  }
}

