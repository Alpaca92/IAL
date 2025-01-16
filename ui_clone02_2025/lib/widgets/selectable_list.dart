import 'package:flutter/material.dart';

class SelectableList extends StatefulWidget {
  const SelectableList({super.key});

  @override
  State<SelectableList> createState() => _SelectableListState();
}

class _SelectableListState extends State<SelectableList> {
  final List<int> _items = [15, 20, 25, 30, 35];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = _items[index % _items.length];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  '$item',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffe64d3d),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
