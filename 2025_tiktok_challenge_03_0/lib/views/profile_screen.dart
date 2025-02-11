import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_challenge_04/constants/gaps.dart';
import 'package:tiktok_challenge_04/constants/sizes.dart';
import 'package:tiktok_challenge_04/views/settings_screen.dart';
import 'package:tiktok_challenge_04/widgets/persistent_tab_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  void _onSettingsPressed(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SettingsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                leading: IconButton(
                  icon: FaIcon(FontAwesomeIcons.globe),
                  onPressed: () {},
                ),
                actions: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.instagram),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.sliders),
                    onPressed: () => _onSettingsPressed(context),
                  ),
                ],
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: Sizes.size16),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gaps.v24,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ayaan',
                                style: TextStyle(
                                  fontSize: Sizes.size24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Gaps.v8,
                              Row(
                                children: [
                                  Text('be.minimal.o.o9'),
                                  Gaps.h8,
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: Sizes.size10,
                                      vertical: Sizes.size6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Text(
                                      'threads.net',
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.teal.shade100,
                            child: Text(
                              '🦙',
                              style: TextStyle(
                                fontSize: Sizes.size28,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gaps.v16,
                      Text(
                        'Palindromic Programmer 🧑‍💻',
                        style: TextStyle(
                          fontSize: Sizes.size16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Gaps.v20,
                      Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                radius: 16,
                                backgroundColor: Colors.orange.shade100,
                                child: Text('🥇'),
                              ),
                              Positioned(
                                left: 24,
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.amber.shade100,
                                  child: Text('🥈'),
                                ),
                              ),
                            ],
                          ),
                          Gaps.h40,
                          Text(
                            '2 followers',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                      Gaps.v32,
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: Sizes.size12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey.shade400,
                                ),
                              ),
                              child: Text(
                                'Edit profile',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Sizes.size16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          Gaps.h16,
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: Sizes.size12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey.shade400,
                                ),
                              ),
                              child: Text(
                                'Share profile',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Sizes.size16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: PersistentTabBar(),
              ),
            ];
          },
          body: TabBarView(
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: Sizes.size2,
                  mainAxisSpacing: Sizes.size2,
                  childAspectRatio: 9 / 14,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.primaries[index % Colors.primaries.length],
                  );
                },
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: Sizes.size2,
                  mainAxisSpacing: Sizes.size2,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.primaries[index % Colors.primaries.length],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
