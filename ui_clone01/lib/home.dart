import 'package:flutter/material.dart';
import 'package:heroicons_flutter/heroicons_flutter.dart';
import 'package:heroicons_flutter/heroicons_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        width: 60,
                      ),
                    ),
                    Icon(
                      HeroiconsMini.plus,
                      color: Theme.of(context).primaryColor,
                      size: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'MONDAY',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '16',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'TODAY',
                          style: TextStyle(
                            fontSize: 40,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        const Text(
                          '·',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xff8e8e8e),
                          ),
                        ),
                        const Text(
                          '17',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xff8e8e8e),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          '18',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xff8e8e8e),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          '19',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xff8e8e8e),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          '20',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xff8e8e8e),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
              const Card(
                start: '11:30',
                end: '12:20',
                subject: 'design meeting',
                participants: ['alex', 'helena', 'nana'],
                backgroundColor: Color(0xfffdf871),
              ),
              const SizedBox(
                height: 10,
              ),
              const Card(
                start: '12:35',
                end: '14:10',
                subject: 'daily project',
                participants: ['me', 'richard', 'ciry', '+4'],
                backgroundColor: Color(0xff956dc8),
              ),
              const SizedBox(
                height: 10,
              ),
              const Card(
                start: '15:00',
                end: '16:30',
                subject: 'weekly planning',
                participants: ['den', 'nana', 'mark'],
                backgroundColor: Color(0xffc8ed68),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String start;
  final String end;
  final String subject;
  final List<String> participants;
  final Color backgroundColor;

  const Card({
    super.key,
    required this.start,
    required this.end,
    required this.subject,
    required this.participants,
    required this.backgroundColor,
  });

  List<Widget> convertParticipants() {
    final List<Widget> list = [];

    for (int i = 0; i < participants.length; i++) {
      list.add(
        Text(
          participants[i].toUpperCase(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: participants[i].toUpperCase() == 'ME'
                ? Colors.black
                : Colors.black26,
          ),
        ),
      );

      if (i != participants.length - 1) {
        list.add(
          const SizedBox(
            width: 15,
          ),
        );
      }
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    start.split(':').first,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                  ),
                  Text(
                    start.split(':').last,
                    style: const TextStyle(
                      fontSize: 20,
                      height: 1,
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 25,
                    color: Colors.black,
                  ),
                  Text(
                    end.split(':').first,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    end.split(':').last,
                    style: const TextStyle(
                      fontSize: 20,
                      height: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                child: Text(
                  subject.toUpperCase(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 60,
                    height: 1,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 55,
              ),
              ...convertParticipants(),
            ],
          ),
        ],
      ),
    );
  }
}
