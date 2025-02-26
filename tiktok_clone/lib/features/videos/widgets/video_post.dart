import 'package:flutter/material.dart';
import 'package:tiktok_clone/features/videos/widgets/video_comments.dart';

class VideoPost extends StatefulWidget {
  const VideoPost({super.key});

  @override
  State<VideoPost> createState() => _VideoPostState();
}

class _VideoPostState extends State<VideoPost> {
  void _onCommentsTap(BuildContext context) async {
    // if (_videoPlayerController.value.isPlaying) {
    //   _onTogglePause();
    // }

    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const VideoComments(),
    );

    //   _onTogglePause();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: GestureDetector(
          onTap: () => _onCommentsTap(context),
          child: const Text('comment button'),
        ),
      ),
    );
  }
}
