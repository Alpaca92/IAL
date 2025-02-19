import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

const interests = [
  "Daily Life",
  "Comedy",
  "Entertainment",
  "Animals",
  "Food",
  "Beauty & Style",
  "Drama",
  "Learning",
  "Talent",
  "Sports",
  "Auto",
  "Family",
  "Fitness & Health",
  "DIY & Life Hacks",
  "Arts & Crafts",
  "Dance",
  "Outdoors",
  "Oddly Satisfying",
  "Home & Garden",
  "Daily Life",
  "Comedy",
  "Entertainment",
  "Animals",
  "Food",
  "Beauty & Style",
  "Drama",
  "Learning",
  "Talent",
  "Sports",
  "Auto",
  "Family",
  "Fitness & Health",
  "DIY & Life Hacks",
  "Arts & Crafts",
  "Dance",
  "Outdoors",
  "Oddly Satisfying",
  "Home & Garden",
];

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose your interests'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: Sizes.size24,
            right: Sizes.size24,
            bottom: Sizes.size20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.v32,
              const Text(
                'Choose your interests',
                style: TextStyle(
                  fontSize: Sizes.size44,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gaps.v20,
              const Text(
                'Get better vidio recommendations',
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              Gaps.v64,
              Wrap(
                spacing: Sizes.size12,
                runSpacing: Sizes.size20,
                children: [
                  for (var interest in interests)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: Sizes.size16,
                        horizontal: Sizes.size24,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(Sizes.size32),
                        border: Border.all(
                          color: Colors.black.withValues(alpha: 0.1),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.1),
                            blurRadius: 5,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Text(
                        interest,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
      // NOTE: Material 3에서는 기본적으로 80.0의 높이가 적용
      // 따라서 강의 처럼 padding을 넣는다고 해서 높이가 늘어나지 않음
      bottomNavigationBar: BottomAppBar(
        height: 100,
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              'Next',
              style: TextStyle(
                color: Colors.white,
                fontSize: Sizes.size16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
