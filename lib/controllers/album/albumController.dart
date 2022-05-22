import 'dart:convert';

import 'package:album/models/models.dart';
import 'package:http/http.dart' as http;

class AlbumController {
  static const ALBUM_URL =
      'https://itunes.apple.com/search?term=jack+johnson&entity=album';
  Future<List<Album>> getAlbums() async {
    var url = Uri.parse(ALBUM_URL);
    var response = await http.get(url);
    List<Album> list = [];
    if (response.statusCode == 200) {
      // print('Response body: ${response.body}');
      var body = jsonDecode(response.body);
      for (var album in body['results']) {
        list.add(Album.fromJson(album));
      }
      print('AlbumController - list : ${list.length}');

      return list;
    } else {
      print(
          "AlbumController - getAlbums failed, statusCode : ${response.statusCode}");
      return [];
    }
  }
}
