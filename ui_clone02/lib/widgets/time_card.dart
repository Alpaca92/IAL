import 'package:flutter/material.dart';

class TimeCard extends StatelessWidget {
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
            width: 90,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Positioned(
          top: -5,
          child: Container(
            width: 100,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Container(
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
