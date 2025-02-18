import 'package:flutter/material.dart';
import 'package:tiktok_clone/features/videos/widgets/video_comments.dart';

// NOTE: 진도가 밀려서 건너뛴 부분이 있음
// #5.2 ~#7.9
// 위 부분은 조금씩 학습할 것
class VideoPostScreen extends StatelessWidget {
  const VideoPostScreen({super.key});

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
