import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPost extends StatefulWidget {
  const VideoPost({super.key});

  @override
  State<VideoPost> createState() => _VideoPostState();
}

class _VideoPostState extends State<VideoPost> {
  final VideoPlayerController _videoPlayerController =
      VideoPlayerController.asset('assets/portrait_example01.mp4');

  void _initializeVideoPlayer() async {
    await _videoPlayerController.initialize();
    _videoPlayerController.play();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _videoPlayerController.value.isInitialized
            ? VideoPlayer(_videoPlayerController)
            : Positioned.fill(child: Container(color: Colors.black)),
      ],
    );
  }
}
