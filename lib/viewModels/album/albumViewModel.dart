import 'package:album/models/models.dart';

class AlbumViewModel {
  List<Album>? _albums;

  void setAlbums(List<Album> albums) {
    _albums = albums;
  }

  List<Album> getAlbums() {
    if (_albums == null)
      return [];
    else
      return _albums!;
  }
}
