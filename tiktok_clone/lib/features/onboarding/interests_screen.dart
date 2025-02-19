import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/onboarding/widgets/interest_button.dart';

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

class InterestsScreen extends StatefulWidget {
  const InterestsScreen({super.key});

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _showTitle = false;

  void _onScroll() {
    setState(() {
      bool over100 = _scrollController.offset > 100;

      if (over100 && _showTitle) return;
      _showTitle = over100 ? true : false;
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      _onScroll();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedOpacity(
          opacity: _showTitle ? 1 : 0,
          duration: const Duration(milliseconds: 300),
          child: const Text('Choose your interests'),
        ),
      ),
      body: Scrollbar(
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.only(left: Sizes.size24, right: Sizes.size24, bottom: Sizes.size20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gaps.v32,
                const Text(
                  'Choose your interests',
                  style: TextStyle(fontSize: Sizes.size44, fontWeight: FontWeight.bold),
                ),
                Gaps.v20,
                const Text('Get better vidio recommendations', style: TextStyle(fontSize: Sizes.size20)),
                Gaps.v64,
                Wrap(
                  spacing: Sizes.size12,
                  runSpacing: Sizes.size20,
                  children: [for (var interest in interests) InterestButton(interest: interest)],
                ),
              ],
            ),
          ),
        ),
      ),
      // NOTE: Material 3에서는 기본적으로 80.0의 높이가 적용
      // 따라서 강의 처럼 padding을 넣는다고 해서 높이가 늘어나지 않음
      bottomNavigationBar: BottomAppBar(
        height: 100,
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          child: const Align(
            alignment: Alignment.center,
            child: Text('Next', style: TextStyle(color: Colors.white, fontSize: Sizes.size16)),
          ),
        ),
      ),
    );
  }
}
