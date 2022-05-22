import 'package:album/models/models.dart';

class BookmarkViewModel {
  List<Album>? _bookmarks;

  void setBookmarks(List<Album> bookmarks) {
    _bookmarks = bookmarks;
  }

  List<Album> getBookmarks() {
    if (_bookmarks == null)
      return [];
    else
      return _bookmarks!;
  }
}
