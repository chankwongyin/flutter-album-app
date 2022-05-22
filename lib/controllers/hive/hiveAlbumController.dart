import 'package:album/models/models.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveAlbumController {
  static final box = Hive.box('albums');
  static const HIVE_ALBUM_KEY_BOOKMARK = 'bookmarks';

  bool addBookmarkAlbum(Album album) {
    try {
      List<Album> bookmarks =
          box.get(HIVE_ALBUM_KEY_BOOKMARK, defaultValue: []);
      for (var item in bookmarks) {
        if (album.collectionId == item.collectionId) return true;
      }
      bookmarks.add(album);
      box.put(HIVE_ALBUM_KEY_BOOKMARK, bookmarks);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  bool removeBookmarkAlbum(Album album) {
    try {
      List<Album> bookmarks =
          box.get(HIVE_ALBUM_KEY_BOOKMARK, defaultValue: []);
      for (var item in bookmarks) {
        if (album.collectionId == item.collectionId) {
          bookmarks.remove(item);
          box.put(HIVE_ALBUM_KEY_BOOKMARK, bookmarks);
          return true;
        }
      }

      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  List<Album> getAllBookmarkAlbum() {
    return box.get(HIVE_ALBUM_KEY_BOOKMARK, defaultValue: []);
  }
}
