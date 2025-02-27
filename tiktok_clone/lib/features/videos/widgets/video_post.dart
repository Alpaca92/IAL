import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class VideoPost extends StatefulWidget {
  final int index;
  final Function onVideoFinished;

  const VideoPost({
    super.key,
    required this.onVideoFinished,
    required this.index,
  });

  @override
  State<VideoPost> createState() => _VideoPostState();
}

class _VideoPostState extends State<VideoPost> {
  final VideoPlayerController _videoPlayerController =
      VideoPlayerController.asset('assets/videos/portrait_example01.mp4');

  void _onVideoChange() {
    // NOTE: The following code is a pattern matching syntax.
    //       It is a syntax that matches the type of the object and assigns it to a variable.
    //       It is a syntax that is often used in the Dart language.
    final VideoPlayerController(
      value: VideoPlayerValue(:isInitialized, :duration, :position),
    ) = _videoPlayerController;

    if (isInitialized) {
      if (duration == position) {
        widget.onVideoFinished();
      }
    }
  }

  void _initializeVideoPlayer() async {
    await _videoPlayerController.initialize();
    setState(() {});
    _videoPlayerController.addListener(_onVideoChange);
  }

  void _onVisibilityChanged(VisibilityInfo info) {
    final VisibilityInfo(:visibleFraction) = info;
    final VideoPlayerController(:play, value: VideoPlayerValue(:isPlaying)) =
        _videoPlayerController;

    if (visibleFraction == 1 && !isPlaying) {
      play();
    }
  }

  void _onTogglePause() {
    final VideoPlayerController(
      :play,
      :pause,
      value: VideoPlayerValue(:isPlaying),
    ) = _videoPlayerController;

    isPlaying ? pause() : play();
  }

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('${widget.index}'),
      onVisibilityChanged: _onVisibilityChanged,
      child: Stack(
        children: [
          _videoPlayerController.value.isInitialized
              ? VideoPlayer(_videoPlayerController)
              : Positioned.fill(child: Container(color: Colors.black)),
          Positioned.fill(child: GestureDetector(onTap: _onTogglePause)),
          const Positioned.fill(
            child: IgnorePointer(
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.play,
                  color: Colors.white,
                  size: Sizes.size52,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
