import 'package:album/models/models.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveAlbumController {
  static final box = Hive.box<Album>('albums');
  static const HIVE_ALBUM_KEY_BOOKMARK = 'bookmarks';

  bool isBookmarked(Album album) {
    Album? tmp = box.get(album.collectionId);
    if (tmp == null)
      return false;
    else
      return true;
  }

  bool addBookmarkAlbum(Album album) {
    try {
      box.put(album.collectionId, album);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  bool removeBookmarkAlbum(Album album) {
    try {
      box.delete(album.collectionId);

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  List<Album> getAllBookmarkAlbum() {
    return box.values.toList();
  }
}
