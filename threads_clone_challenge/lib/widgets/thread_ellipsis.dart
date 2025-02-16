import 'package:flutter/material.dart';
import '../constants/gaps.dart';
import '../constants/sizes.dart';

class ThreadEllipsis extends StatefulWidget {
  const ThreadEllipsis({super.key});

  @override
  State<ThreadEllipsis> createState() => _ThreadEllipsisState();
}

class _ThreadEllipsisState extends State<ThreadEllipsis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size32,
        ),
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Sizes.size20,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: Sizes.size12,
                      horizontal: Sizes.size24,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xffe6e4e5),
                        ),
                      ),
                    ),
                    child: Text(
                      'Unfollow',
                      style: TextStyle(
                        fontSize: Sizes.size20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: Sizes.size12,
                      horizontal: Sizes.size24,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                    ),
                    child: Text(
                      'Mute',
                      style: TextStyle(
                        fontSize: Sizes.size20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gaps.v20,
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Sizes.size20,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: Sizes.size12,
                      horizontal: Sizes.size24,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xffe6e4e5),
                        ),
                      ),
                    ),
                    child: Text(
                      'Hide',
                      style: TextStyle(
                        fontSize: Sizes.size20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: Sizes.size12,
                      horizontal: Sizes.size24,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                    ),
                    child: Text(
                      'Report',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: Sizes.size20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
