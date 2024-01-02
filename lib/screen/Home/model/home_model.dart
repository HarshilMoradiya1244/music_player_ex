class SongModel {
  String? song, album;

  SongModel({this.song, this.album, this.dataModel});

  DataModel? dataModel;

  factory SongModel.mapToModel(Map m1) {
    return SongModel(
      song: m1['song'],
      album: m1['album'],
      dataModel:DataModel.mapToModel(m1['data'],
      )
    );
  }
}

class DataModel {
  String? image, url ,singer;

  DataModel({this.image, this.url, this.singer});

  factory DataModel.mapToModel(Map m1) {
    return DataModel(
      image: m1['image'],
      url: m1['url'],
      singer:m1['singer'],
    );
  }
}
