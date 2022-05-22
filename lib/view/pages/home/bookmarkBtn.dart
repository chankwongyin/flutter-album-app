import 'package:album/controllers/controllers.dart';
import 'package:album/models/models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookmarkBtn extends StatefulWidget {
  final Album album;

  const BookmarkBtn({Key? key, required this.album}) : super(key: key);
  @override
  _BookmarkBtnState createState() => _BookmarkBtnState();
}

class _BookmarkBtnState extends State<BookmarkBtn> {
  Color _color = Colors.grey;
  final HiveAlbumController bookmarkController = Get.find();

  @override
  void initState() {
    super.initState();
    if (bookmarkController.isBookmarked(widget.album)) {
      _color = Colors.orangeAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 24,
      icon: Icon(
        Icons.bookmark,
        color: _color,
      ),
      onPressed: () {
        if (bookmarkController.isBookmarked(widget.album)) {
          setState(() {
            _color = Colors.grey;
          });
          bookmarkController.removeBookmarkAlbum(widget.album);
        } else {
          setState(() {
            _color = Colors.orangeAccent;
          });
          bookmarkController.addBookmarkAlbum(widget.album);
        }

        print(bookmarkController.getAllBookmarkAlbum().length);
      },
    );
  }
}
