import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';


class LiveTvPage extends StatefulWidget {


  @override
  _LiveTvPageState createState() => _LiveTvPageState();
}

class _LiveTvPageState extends State<LiveTvPage> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    // Replace the URL with the actual streaming URL
    _videoPlayerController = VideoPlayerController.network(
      'https://rta.live/',
    );

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 16 / 9,
      autoPlay: true,
      looping: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live TV'),
      ),
      body: Center(
        child: Chewie(
          controller: _chewieController,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LiveTvPage(),
  ));
}
