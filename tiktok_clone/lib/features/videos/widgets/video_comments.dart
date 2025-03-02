import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class VideoComments extends StatefulWidget {
  const VideoComments({super.key});

  @override
  State<VideoComments> createState() => _VideoCommentsState();
}

class _VideoCommentsState extends State<VideoComments> {
  bool isWriting = false;

  void _onClosePressed() {
    Navigator.of(context).pop();
  }

  void _stopWriting() {
    FocusScope.of(context).unfocus();
    setState(() {
      isWriting = false;
    });
  }

  void _onStartWriting() {
    setState(() {
      isWriting = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData(:size) = MediaQuery.of(context);

    return Container(
      height: size.height * 0.7,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.size14),
      ),
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          title: const Text('33,333 Comments'),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: _onClosePressed,
              icon: const FaIcon(FontAwesomeIcons.xmark),
            ),
          ],
        ),
        body: GestureDetector(
          onTap: _stopWriting,
          child: Stack(
            children: [
              ListView.separated(
                padding: const EdgeInsets.only(
                  top: Sizes.size10,
                  bottom: Sizes.size96 + Sizes.size20,
                  left: Sizes.size16,
                  right: Sizes.size16,
                ),
                separatorBuilder: (context, index) => Gaps.v20,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(radius: 18, child: Text('nico')),
                      Gaps.h10,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'nico',
                              style: TextStyle(
                                fontSize: Sizes.size14,
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Gaps.v3,
                            const Text(
                              'That is not good! That is not good! That is not good! That is not good!',
                            ),
                          ],
                        ),
                      ),
                      Gaps.h10,
                      Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.heart,
                            size: Sizes.size20,
                            color: Colors.grey.shade500,
                          ),
                          Gaps.v2,
                          Text(
                            '52.2K',
                            style: TextStyle(color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
              Positioned(
                width: size.width,
                bottom: 0,
                child: BottomAppBar(
                  color: Colors.white,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.grey.shade400,
                        foregroundColor: Colors.white,
                        child: const Text('nico'),
                      ),
                      Gaps.h10,
                      Expanded(
                        child: TextField(
                          onTap: _onStartWriting,
                          expands: true,
                          minLines: null,
                          maxLines: null,
                          textInputAction: TextInputAction.newline,
                          cursorColor: Theme.of(context).primaryColor,
                          decoration: InputDecoration(
                            hintText: 'Write a comment...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(Sizes.size12),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(
                                right: Sizes.size14,
                              ),
                              child: Row(
                                spacing: Sizes.size14,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.at,
                                    color: Colors.grey.shade900,
                                  ),
                                  FaIcon(
                                    FontAwesomeIcons.gift,
                                    color: Colors.grey.shade900,
                                  ),
                                  FaIcon(
                                    FontAwesomeIcons.faceSmile,
                                    color: Colors.grey.shade900,
                                  ),
                                  if (isWriting)
                                    GestureDetector(
                                      onTap: _stopWriting,
                                      child: FaIcon(
                                        FontAwesomeIcons.circleArrowUp,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: Sizes.size12,
                              horizontal: Sizes.size10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
