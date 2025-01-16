import 'package:flutter/material.dart';

class SelectableList extends StatefulWidget {
  const SelectableList({super.key});

  @override
  State<SelectableList> createState() => _SelectableListState();
}

class _SelectableListState extends State<SelectableList> {
  final List<int> _items = [15, 20, 25, 30, 35];
  final ScrollController _controller = ScrollController();
  static const int _startIndex = 2;
  int _selectedIndex = _startIndex;

  void _onScrollEnd() {
    final double offset = _controller.offset;
    final double itemWidth = 100;
    final int index = (offset / itemWidth).round();

    setState(() {
      _selectedIndex = index + _startIndex;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification notification) {
        if (notification is ScrollStartNotification) {
          //
        } else if (notification is ScrollEndNotification) {
          _onScrollEnd();
        }
        return true;
      },
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          controller: _controller,
          itemBuilder: (context, index) {
            final item = _items[index % _items.length];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: 80,
                decoration: BoxDecoration(
                  color: index == _selectedIndex
                      ? Colors.white
                      : Colors.transparent,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    '$item',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: index == _selectedIndex
                          ? Color(0xffe64d3d)
                          : Colors.white,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
