// this class model to insert data from API or manuel

class SongModel{
  String name, des, artist;

  SongModel({required this.name,required this.des,required this.artist});

  factory SongModel.fromJson(Map<String, dynamic>json){
    return SongModel(
        name: json['name'],
        des: json['des'],
        artist: json['artist']
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'name':'name',
      'des':'des',
      'artist':'artist',
    };
  }

}