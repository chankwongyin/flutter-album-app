import 'package:album/controllers/controllers.dart';
import 'package:album/models/models.dart';
import 'package:album/viewModels/albumViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AlbumController _albumController = Get.find();
  AlbumViewModel _albumViewModel = AlbumViewModel();

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    List<Album> albums = await _albumController.getAlbums();
    _albumViewModel.setAlbums(albums);
    setState(() {
      _albumViewModel = _albumViewModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
