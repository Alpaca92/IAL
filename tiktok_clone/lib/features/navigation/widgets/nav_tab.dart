import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';

class NavTab extends StatelessWidget {
  const NavTab({
    super.key,
    required this.text,
    required this.icon,
    required this.selectedIcon,
    required this.isSelected,
    required this.onTap,
    required this.selectedIndex,
  });

  final String text;
  final IconData icon;
  final IconData selectedIcon;
  final bool isSelected;
  final Function onTap;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior:
            HitTestBehavior.opaque, // NOTE: Expanded로 인한 빈공간도 이벤트 리스닝 가능하게 함
        onTap: () => onTap(),
        child: Container(
          color: selectedIndex == 0 ? Colors.black : Colors.white,
          child: AnimatedOpacity(
            opacity: isSelected ? 1 : 0.6,
            duration: const Duration(milliseconds: 300),
            child: Column(
              children: [
                FaIcon(
                  isSelected ? selectedIcon : icon,
                  color: selectedIndex == 0 ? Colors.white : Colors.black,
                ),
                Gaps.v5,
                Text(
                  text,
                  style: TextStyle(
                    color: selectedIndex == 0 ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
