import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

final tabs = ['Top', 'Users', 'Videos', 'LIVE', 'Sounds', 'Shpping', 'Brands'];

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Discover'),
          bottom: TabBar(
            splashFactory: NoSplash.splashFactory,
            isScrollable: true,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey.shade500,
            indicatorColor: Colors.black,
            labelStyle: const TextStyle(
              fontSize: Sizes.size16,
              fontWeight: FontWeight.w600,
            ),
            padding: const EdgeInsets.symmetric(horizontal: Sizes.size16),
            tabs: [for (var tab in tabs) Tab(child: Text(tab))],
          ),
        ),
        body: TabBarView(
          children: [
            GridView.builder(
              padding: const EdgeInsets.all(Sizes.size6),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 9 / 21,
                mainAxisSpacing: Sizes.size10,
                crossAxisSpacing: Sizes.size10,
              ),
              itemBuilder:
                  (context, index) => Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 9 / 16,
                        child: FadeInImage.assetNetwork(
                          fit: BoxFit.cover,
                          placeholder: 'assets/images/placeholder.jpg',
                          image: 'https://source.unsplash.com/random/?$index',
                        ),
                      ),
                      Gaps.v10,
                      const Text(
                        'This is a very long caption for my tiktok that i am upload just now currently.',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: Sizes.size16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gaps.v5,
                      DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w600,
                        ),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: Sizes.size16,
                              child: Text('name', textAlign: TextAlign.center),
                            ),
                            Gaps.h4,
                            const Expanded(
                              child: Text(
                                'My avatar is going to be very long.',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Gaps.h4,
                            FaIcon(
                              FontAwesomeIcons.heart,
                              size: Sizes.size16,
                              color: Colors.grey.shade600,
                            ),
                            Gaps.h4,
                            const Text('2.5M'),
                          ],
                        ),
                      ),
                    ],
                  ),
            ),
            for (var tab in tabs.skip(1)) Center(child: Text(tab)),
          ],
        ),
      ),
    );
  }
}
