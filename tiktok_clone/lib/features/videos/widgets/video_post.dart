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

class _VideoPostState extends State<VideoPost>
    with SingleTickerProviderStateMixin {
  final VideoPlayerController _videoPlayerController =
      VideoPlayerController.asset('assets/videos/portrait_example01.mp4');
  late final AnimationController _animationController;
  final Duration _animationDuration = const Duration(milliseconds: 200);
  bool isPaused = false;

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
    final AnimationController(:forward, :reverse) = _animationController;

    if (isPlaying) {
      pause();
      reverse();
    } else {
      play();
      forward();
    }

    setState(() {
      isPaused = !isPaused;
    });
  }

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
    _animationController = AnimationController(
      vsync: this,
      duration: _animationDuration,
      lowerBound: 1.0,
      upperBound: 1.5,
      value: 1.5,
    );
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
          Positioned.fill(
            child: IgnorePointer(
              child: Center(
                child: AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: _animationController.value,
                      child: AnimatedOpacity(
                        opacity: isPaused ? 1 : 0,
                        duration: _animationDuration,
                        child: const FaIcon(
                          FontAwesomeIcons.play,
                          color: Colors.white,
                          size: Sizes.size52,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
