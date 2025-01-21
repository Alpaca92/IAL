import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final Widget? logo;
  final String text;

  const AuthButton({
    super.key,
    this.logo,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade400,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        padding: EdgeInsets.symmetric(vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (logo != null) logo!,
            SizedBox(width: 12),
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
