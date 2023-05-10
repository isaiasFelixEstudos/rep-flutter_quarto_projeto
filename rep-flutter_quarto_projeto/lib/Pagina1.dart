import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Pagina1 extends StatefulWidget {
  const Pagina1({Key? key}) : super(key: key);

  @override
  State<Pagina1> createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1> {
  @override
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
        actions: [
          PopupMenuButton(
              onSelected: (value) {
                if (value == '/home/pg-1') {
                  Navigator.of(context).pushNamed('/home/pg-1');
                } else if (value == '/home/pg-2') {
                  Navigator.of(context).pushNamed('/home/pg-2');
                } else if (value == '/home/pg-3') {
                  Navigator.of(context).pushNamed('/home/pg-3');
                } else if (value == '/home/pg-4') {
                  Navigator.of(context).pushNamed('/home/pg-4');
                } else if (value == '/home/pg-5') {
                  Navigator.of(context).pushNamed('/home/pg-5');
                } else if (value == '/home') {
                  Navigator.popUntil(context, ModalRoute.withName('/home'));
                }
              },
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text('Home'),
                      value: '/home',
                    ),
                    PopupMenuItem(
                      child: Text('Pg-1'),
                      value: '/home/pg-1',
                    ),
                    PopupMenuItem(
                      child: Text('Pg-2'),
                      value: '/home/pg-2',
                    ),
                    PopupMenuItem(
                      child: Text('Pg-3'),
                      value: '/home/pg-3',
                    ),
                    PopupMenuItem(
                      child: Text('Pg-4'),
                      value: '/home/pg-4',
                    ),
                    PopupMenuItem(
                      child: Text('Pg-5'),
                      value: '/home/pg-5',
                    ),
                  ])
        ],
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
