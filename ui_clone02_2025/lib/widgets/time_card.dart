import 'package:flutter/material.dart';

class TimeCard extends StatelessWidget {
  static const double width = 120;

  const TimeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -10,
          child: Container(
            width: width * 0.8,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Positioned(
          top: -5,
          child: Container(
            width: width * 0.9,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Container(
          width: width,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            '12', // FIXME: 동적으로 변경되야할 부분
            style: TextStyle(
              color: Color(0xffe64d3d),
              fontSize: 70,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
