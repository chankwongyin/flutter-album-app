import 'package:album/controllers/controllers.dart';
import 'package:album/models/models.dart';
import 'package:album/view/components/bookmarkBtn.dart';
import 'package:album/viewModels/viewModels.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookmarkPage extends StatefulWidget {
  @override
  _BookmarkPageState createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  HiveAlbumController _hiveAlbumController = Get.find();
  BookmarkViewModel _bookmarkViewModel = BookmarkViewModel();

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() {
    _bookmarkViewModel.setBookmarks(_hiveAlbumController.getAllBookmarkAlbum());
    setState(() {
      _bookmarkViewModel = _bookmarkViewModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Album> bookmarks = _bookmarkViewModel.getBookmarks();
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: bookmarks.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(
                bookmarks[index].artworkUrl60,
                width: 60,
              ),
              title: Text(
                bookmarks[index].collectionName,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(bookmarks[index].artistName),
              trailing: BookmarkBtn(album: bookmarks[index]),
            );
          },
        ),
      ),
    );
  }
}
